# dotfiles2

NMMM - new minial managable modular dotfiles

## Editor Advanced Features

- [ ] DAP Debugging Adapter Protocol
- [ ] LSP Language Server Protocol client-server
- [ ] Treesitter AST

## LSP

- specification put forward by Microsoft to support multiple editors

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
:lua vim.lsp.buf.code_actions()
```

Search substring of a search keyword
Search files in other directories then open in vertical split using CTRL-V
```
:Telescope grep_string search=<string>
:Telescope find_files cwd=~/.config
```

```
:belowright vsplit | terminal rg --count -l vim
```
