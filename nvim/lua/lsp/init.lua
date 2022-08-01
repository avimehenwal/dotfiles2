require'lspconfig'.sumneko_lua.setup {

    on_attach = function()
      print("lua lsp attached to buffer")
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
      -- jumplist movements CTRL-T | taglist CTRL-O/I
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
      vim.keymap.set("n", "gtd", vim.lsp.buf.type_definition, {buffer=0})
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
    end,
    
    settings = {
      Lua = {
        runtime = {
          -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
          version = 'LuaJIT',
        },

        diagnostics = {
          -- Get the language server to recognize the `vim` global
          globals = {'vim'},
        },

        workspace = {
          -- Make the server aware of Neovim runtime files
          library = vim.api.nvim_get_runtime_file("", true),
        },
        -- Do not send telemetry data containing a randomized but unique identifier
	
        telemetry = {
          enable = false,
        },
      },
    },
  }

print('lua lsp loaded')
