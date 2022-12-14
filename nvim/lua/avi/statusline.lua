vim.opt.laststatus = 3

vim.api.nvim_command([[
    highlight WinSeperator guibg=none
]])

require('lualine').setup{
  options = { theme = 'gruvbox' },
  sections = {
    lualine_c = {
      {
        'filename',
        file_status = true, -- displays file status (readonly status, modified status)
        path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
      }
    }
  },
}

