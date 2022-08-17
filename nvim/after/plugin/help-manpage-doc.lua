-- 1. set linenumbers for manpages, help-pages and documentation pages for faster navigation

-- use n_K to see vim documention -> setlocal keywordprg=:help 

vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("avi_docManPage", {clear = true}),
  pattern = { "man", "help" },
  callback = function()
    vim.api.nvim_command("wincmd H")             -- info in vertical split to use the empty space
    vim.opt.number = true                        -- #lines and promote faster navigation
  end
})
