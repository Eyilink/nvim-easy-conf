require("eyilink")
--print("hello")

-- Guardar el primer argumento (directorio) al iniciar Neovim
vim.api.nvim_create_autocmd("VimEnter", {
  pattern = "*",
  callback = function()
    -- Verificar si hay argumentos y si el primer argumento es un directorio
    if vim.fn.argc() > 0 then
      local first_arg = vim.fn.argv(0)
      if vim.fn.isdirectory(first_arg) == 1 then
        vim.g.start_dir = first_arg
      else
        -- Si el primer argumento no es un directorio, usar el directorio actual
        vim.g.start_dir = vim.fn.getcwd()
      end
    else
      -- Si no hay argumentos, usar el directorio actual
      vim.g.start_dir = vim.fn.getcwd()
    end
  end,
})
