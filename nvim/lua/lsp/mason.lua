require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "sumneko_lua", "tsserver" }
})

require('lsp.typescript')
require('lsp.go')
require('lsp.lua')
