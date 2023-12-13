lvim.format_on_save = true

local is_prettier = true

if not is_prettier then
  local linters = require "lvim.lsp.null-ls.linters"
  linters.setup {
    {
      command = "eslint",
      filetypes = {
        "typescript",
        "typescriptreact",
        "javascript",
        "javascriptreact" } }
  }
else
  local formatters = require "lvim.lsp.null-ls.formatters"
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
