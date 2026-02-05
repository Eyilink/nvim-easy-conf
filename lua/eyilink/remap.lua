vim.g.mapleader = " "
vim.keymap.set("n", "<leader>	", vim.cmd.Ex)
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
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


-- Global variable to store the terminal buffer number
_G.bottom_term_buf = nil

function _G.toggle_bottom_terminal()
  -- If buffer exists and is valid, toggle visibility
  if _G.bottom_term_buf and vim.api.nvim_buf_is_valid(_G.bottom_term_buf) then
    -- Check if the terminal window is open
    for _, win in ipairs(vim.api.nvim_list_wins()) do
      if vim.api.nvim_win_get_buf(win) == _G.bottom_term_buf then
        vim.api.nvim_win_close(win, true)  -- close the terminal window
        return
      end
    end
    -- If buffer exists but not displayed, open it at the bottom
    vim.cmd('botright 5split | buffer ' .. _G.bottom_term_buf)
    vim.cmd('startinsert')
  else
    -- Terminal doesn't exist yet → create it
    vim.cmd('botright 5split | terminal zsh')
    vim.cmd('startinsert')
    _G.bottom_term_buf = vim.api.nvim_get_current_buf()
  end
end

-- Map Shift+T to toggle
vim.api.nvim_set_keymap(
  'n',
  'T',
  ':lua _G.toggle_bottom_terminal()<CR>',
  { noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
  't',
  'T',
  '<C-\\><C-n>:lua _G.toggle_bottom_terminal()<CR>',
  { noremap = true, silent = true }
)
