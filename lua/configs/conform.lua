local options = {
  formatters_by_ft = {
    go = { "goimports" },
    php = { "pint" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
