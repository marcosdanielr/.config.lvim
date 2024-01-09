lvim.format_on_save = true

local is_eslint = true

local formatters = require "lvim.lsp.null-ls.formatters"
local linters = require "lvim.lsp.null-ls.linters"

if is_eslint then
  linters.setup {
    {
      command = "eslint",
      filetypes = {
        "typescript",
        "typescriptreact",
        "javascript",
        "javascriptreact" } }
  }

  formatters.setup {
    {
      command = "eslint_d",
      filetypes = {
        "typescript",
        "typescriptreact",
        "javascript",
        "javascriptreact" },
    },
  }
else
  formatters.setup {
    {
      command = "prettier",
      filetypes = {
        "typescript",
        "typescriptreact",
        "javascript",
        "javascriptreact" },
    },
  }
end
