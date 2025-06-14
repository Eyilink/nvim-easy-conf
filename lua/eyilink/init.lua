require("eyilink.remap")
print("hello from eyilink")

local packer_path = '~/.config/nvim/lua/eyilink/packer.lua'
if vim.fn.filereadable(packer_path) == 1 then
    vim.cmd('source ' .. packer_path)
    if pcall(require, 'packer') then
        vim.cmd('PackerSync')
        vim.cmd('PackerSync')
    end
end
