vim.g.mapleader = " "
vim.keymap.set("n", "<leader>	", vim.cmd.Ex)
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabshop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- Auto-pairs mappings
vim.keymap.set('i', '(', '()<Left>', { noremap = true })
vim.keymap.set('i', '[', '[]<Left>', { noremap = true })
vim.keymap.set('i', '"', '""<Left>', { noremap = true })
vim.keymap.set('i', "'", "''<Left>", { noremap = true })
vim.keymap.set('i', '`', '``<Left>', { noremap = true })
-- Auto-format braces with newlines
vim.keymap.set('i', '{<CR>', '{<CR>}<Esc>O', { noremap = true })
vim.keymap.set('i', '{;<CR>', '{<CR>};<Esc>O', { noremap = true })


