vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps

keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "x", '"_x')

keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

keymap.set("n", "<leader>sv", "<C-w>v") -- split vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close tab
keymap.set("n", "<leader>te", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tq", ":tabp<CR>") -- go to previous tab

keymap.set("n", "<leader>st", "<cmd>ToggleTerm<cr>", { desc = "Toggle Floating Terminal" })

keymap.set("t", "<ESC>", [[<C-\><C-n>]])

-- remapping for Nordic keyboard
vim.keymap.set('n', 'ø', '[', { noremap = true })
vim.keymap.set('n', 'æ', ']', { noremap = true })
vim.keymap.set('v', 'ø', '[', { noremap = true })
vim.keymap.set('v', 'æ', ']', { noremap = true })

vim.keymap.set('n', 'å', '{', { noremap = true })
vim.keymap.set('n', '¨', '}', { noremap = true })

-- plugin keymaps

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- neogit
keymap.set("n", "<leader>gg", function()
  require("neogit").open({ kind = "floating" })
end, { desc = "Open Neogit Floating" })

keymap.set("n", "<leader>gt", function()
  require("neogit").open({ kind = "tab" })
end, { desc = "Open Neogit tab" })

keymap.set("n", "<leader>gs", function()
  require("neogit").open({ kind = "split" })
end, { desc = "Open Neogit split" })

-- fine cmdline
keymap.set('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})
