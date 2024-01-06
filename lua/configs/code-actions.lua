lvim.format_on_save = true

local is_prettier = not true

local formatters = require "lvim.lsp.null-ls.formatters"
local linters = require "lvim.lsp.null-ls.linters"

if not is_prettier then
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
