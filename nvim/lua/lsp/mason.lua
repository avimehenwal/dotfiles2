require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "sumneko_lua", "tsserver" }
})

print('mason lsp loaded')

require('lsp.typescript')
require('lsp.go')
