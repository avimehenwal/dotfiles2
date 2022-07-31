# dotfiles2

NMMM - new minial managable modular dotfiles

## Editor Advanced Features

- [ ] DAP Debugging Adapter Protocol
- [ ] LSP Language Server Protocol client-server
- [ ] Treesitter AST

### Lua Plugins

- write lua plugins from scratch
- how to test ?
- How do we get plugins docs and help ?
- Plugin file places under special folders under VIM rumtime are automatically executed. Eg: `plugin` folder
  - files under `lua` dir are not automatically executred but are available to user
- run lua code inside nvim as REPL

```
:lua require"my-plugin.utils"
:lua package.loaded["my-plugin"] = nil
:lua P(package.loaded)
```
