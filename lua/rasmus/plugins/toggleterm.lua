local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
  return
end

toggleterm.setup({
  size = 20,
  open_mapping = [[<leader>st]], -- This will be your toggle
  hide_numbers = true,
  shade_terminals = true,
  shading_factor = 2,
  start_in_insert = true,
  insert_mappings = true,
  persist_size = true,
  direction = "float", -- <--- This makes it floating!
  close_on_exit = true,
  shell = vim.o.shell,
  float_opts = {
    border = "curved", -- or "rounded", "thick", "single"
    winblend = 3, -- slight transparency
  },
})

-- This function sets mappings that ONLY exist inside the terminal window
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  
  -- In Terminal Mode: Esc exits mode and closes window
  vim.keymap.set('t', '<esc>', [[<C-\><C-n><cmd>ToggleTerm<cr>]], opts)
  
  -- In Normal Mode: Esc just closes the window
  vim.keymap.set('n', '<esc>', [[<cmd>ToggleTerm<cr>]], opts)
  
  -- jk just exits to normal mode (stays open for scrolling)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
end

-- This tells Neovim to run the function above every time a terminal opens
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
