local neogit_setup, neogit = pcall(require, "neogit")
if not neogit_setup then
  return
end

neogit.setup()
