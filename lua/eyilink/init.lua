require("eyilink.remap")
print("hello from eyilink")

-- In your init.lua
vim.cmd('silent! source ~/.config/nvim/lua/eyilink/packer.lua')
vim.cmd('silent! PackerSync')
vim.cmd('silent! PackerSync')
