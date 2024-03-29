require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "tsserver", "tailwindcss", "html", "gopls" }
})
local lsp = require('lsp-zero')

lsp.on_attach(function(_, bufnr)
	lsp.default_keymaps({buffer = bufnr})
end)

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
cmp.setup({
	mapping = cmp.mapping.preset.insert({
		['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
		['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
		['<C-y>'] = cmp.mapping.confirm(),
		['<C-Space>'] = cmp.mapping.complete(),
	})
})

require("lspconfig").lua_ls.setup {}
require("lspconfig").tsserver.setup {
    on_attach = on_attach,
    filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
    cmd = { "typescript-language-server", "--stdio" },
}
require("lspconfig").ruby_ls.setup {}
require("lspconfig").html.setup {}
require("lspconfig").tailwindcss.setup {}
require("lspconfig").gopls.setup {}
