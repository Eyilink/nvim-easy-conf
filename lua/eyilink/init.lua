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

-- Mode
local function mode()
  local modes = {
    n = "NORMAL",
    i = "INSERT",
    v = "VISUAL",
    V = "V-LINE",
    ["\22"] = "V-BLOCK",
    c = "COMMAND",
    R = "REPLACE",
    t = "TERMINAL",
  }

  return modes[vim.fn.mode()] or vim.fn.mode()
end

-- Relative file path
local function filepath()
  local path = vim.fn.expand("%:.")

  if path == "" then
    return ""
  end

  return path
end

-- Git branch
local function git_branch()
  local target_dir = vim.g.start_dir or vim.fn.getcwd()
  local branch = vim.fn.system('cd ' .. target_dir .. ' && git branch --show-current 2>/dev/null'):gsub("\n", "")

  if branch == "" then
    return ""
  end

  return branch
end

-- Statusline
function _G.statusline()
  local left = {
    mode(),
    filepath(),
  }

  local right = {
    git_branch(),
  }

  local function join_nonempty(parts)
    local result = {}

    for _, part in ipairs(parts) do
      if part ~= "" then
        table.insert(result, part)
      end
    end

    return table.concat(result, "   ")
  end

  return join_nonempty(left) .. "%=" .. join_nonempty(right)
end

vim.o.statusline = "%{%v:lua.statusline()%}"

vim.api.nvim_set_hl(0, "StatusLine", {
  fg = "#e0def4",
  bg = "#191724",
})

vim.api.nvim_set_hl(0, "StatusLineNC", {
  fg = "#6e6a86",
  bg = "#191724",
})
