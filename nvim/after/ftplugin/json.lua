-- json schema validation
-- https://github.com/ajv-validator/ajv

vim.opt_local.shiftwidth  = 4
vim.opt_local.softtabstop = 4
vim.opt_local.tabstop     = 4
vim.opt_local.textwidth   = 100

vim.cmd [[setlocal spell]]

if vim.fn.executable 'jq' == 1 then
   vim.opt_local.formatprg = [[jq .]]
else
   vim.opt_local.formatprg = [[python -m json.tool]]
end
-- vim.opt_local.equalprg  = [[prettier --stdin-filepath '%:p']]
-- vim.opt_local.makeprg   = [[tsc %]]
