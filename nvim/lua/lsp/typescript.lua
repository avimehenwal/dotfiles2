require'lspconfig'.tsserver.setup{
    -- cmd = { "typescript-language-server", "--stdio" },
    -- capabilities = capabilities,
    -- filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
    
    on_attach = function()
      print("lua lsp attached to buffer")
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
      -- jumplist movements CTRL-T | taglist CTRL-O/I
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
      vim.keymap.set("n", "gtd", vim.lsp.buf.type_definition, {buffer=0})
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
    end
}

print('typescript lsp loaded')