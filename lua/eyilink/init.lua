require("eyilink.remap")
print("hello from eyilink")

-- In your init.lua
local flag_file = vim.fn.stdpath('data') .. '/packer_synced'

if vim.fn.filereadable(flag_file) == 0 then
    vim.cmd('source /home/exefree/.config/nvim/lua/eyilink/packer.lua')
    vim.cmd('PackerSync')
    vim.cmd('PackerSync')
    
    -- Create the flag file
    vim.fn.writefile({}, flag_file)
end
