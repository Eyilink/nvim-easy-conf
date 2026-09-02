require("eyilink.remap")

require("eyilink.packer")

local flag_file = vim.fn.stdpath('data') .. '/packer_synced'

if vim.fn.filereadable(flag_file) == 0 then
    vim.api.nvim_create_autocmd("User", {
        pattern = "PackerComplete",
        once = true,
        callback = function()
            vim.fn.writefile({}, flag_file)
            vim.notify("Packer sync completo. Reinicia Neovim para aplicar el tema.", vim.log.levels.INFO)
        end,
    })
    vim.cmd('PackerSync')
end
