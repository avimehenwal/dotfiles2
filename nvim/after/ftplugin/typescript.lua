-- lua-style-guide https://github.com/luarocks/lua-style-guide

-- TODO: set keywordprg
-- TODO: set equalprg
-- TODO: set compilerprg
-- TODO: set makeprg

vim.opt_local.shiftwidth  = 2
vim.opt_local.softtabstop = 2
vim.opt_local.tabstop     = 2
vim.opt_local.textwidth   = 100

vim.opt_local.equalprg  = [[prettier --stdin-filepath '%:p']]
vim.opt_local.formatprg = "" -- http://www.nicemice.net/par/
vim.opt_local.makeprg   = [[tsc %]]

vim.cmd [[setlocal spell]]
