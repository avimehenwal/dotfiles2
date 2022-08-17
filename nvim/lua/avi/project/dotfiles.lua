vim.api.nvim_create_autocmd("BufEnter", {
  group = vim.api.nvim_create_augroup("avi_Proj_dotfiles", {clear = true}),
  pattern = { "*/nvim/**" },
  callback = function()
    vim.bo.keywordprg = ':help'                  -- :help keywordprg
  end
})
