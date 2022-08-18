-- lua-style-guide https://github.com/luarocks/lua-style-guide

-- TODO: set keywordprg
-- TODO: set equalprg
-- TODO: set compilerprg
-- TODO: set makeprg

vim.opt_local.shiftwidth  = 3
vim.opt_local.softtabstop = 3
vim.opt_local.tabstop     = 3
vim.opt_local.textwidth   = 100

-- vim.opt_local.equalprg  = ''
-- vim.opt_local.formatprg = "" -- http://www.nicemice.net/par/
vim.opt_local.makeprg   = [[ luacheck --no-color --formatter plain --codes --ranges --max-cyclomatic-complexity 20 % --ignore 112 ]]

