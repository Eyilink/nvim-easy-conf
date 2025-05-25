vim.g.mapleader = " "
vim.keymap.set("n", "<leader>	", vim.cmd.Ex)
vim.opt.number = true

-- Auto-pairs mappings
vim.keymap.set('i', '(', '()<Left>', { noremap = true })
vim.keymap.set('i', '[', '[]<Left>', { noremap = true })
vim.keymap.set('i', '"', '""<Left>', { noremap = true })
vim.keymap.set('i', "'", "''<Left>", { noremap = true })
vim.keymap.set('i', '`', '``<Left>', { noremap = true })
-- Auto-format braces with newlines
vim.keymap.set('i', '{<CR>', '{<CR>}<Esc>O', { noremap = true })
vim.keymap.set('i', '{;<CR>', '{<CR>};<Esc>O', { noremap = true })
