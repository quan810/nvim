local conform = require("conform")

conform.setup({
  formatters_by_ft = {
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
    json = { "prettier" },
    markdown = { "prettier" },
    lua = { "lua_ls" }
  },
  format_on_save = {
    lsp_fallback = true,
    async = false,
    timeout_ms = 500
  }
})
