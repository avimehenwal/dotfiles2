-- vim-Plug>> packer - to make it work on wsl and windows
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

-- treesitter , parsing runtime library for text
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/nvim-treesitter-refactor'
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'nvim-treesitter/playground'

Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug "nvim-telescope/telescope-file-browser.nvim"
Plug "kyazdani42/nvim-web-devicons"

-- lsp
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'mfussenegger/nvim-dap'
Plug 'mfussenegger/nvim-lint'
Plug 'mhartington/formatter.nvim'

Plug 'gruvbox-community/gruvbox'
Plug 'terrortylor/nvim-comment'
-- VCS alternatives https://github.com/TimUntersberger/neogit
Plug 'tpope/vim-fugitive'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-lualine/lualine.nvim'

-- raising bar
Plug 'rcarriga/nvim-notify'

-- completion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
vim.call('plug#end')

require("avi.set-options")
require("avi.keymaps")
require("avi.treesitter")
require('lsp')
require('nvim_comment').setup()
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})
require('avi.statusline')
require('avi.git-vcs')
require('avi.completion')

-- Project Specific
require('avi.project.dotfiles')

vim.cmd 'colorscheme gruvbox'

-- TODO open terminal in insert mode, so that it could be quickly exited with <cr>
-- autocmd TermOpen * startinsert

