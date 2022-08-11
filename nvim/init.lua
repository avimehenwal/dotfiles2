-- This file can be loaded by calling `lua require('plugins')` from your init.vim

vim.opt.backup = false
-- vim.opt.colorcolumn = "120"
vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.hidden = true
vim.opt.termguicolors = true

vim.o.autoindent = true
vim.o.cursorline = true
vim.o.expandtab = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.wrap = false

-- vim-Plug>> packer - to make it work on wsl and windows
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
-- treesitter , parsing runtime library for text
Plug 'nvim-treesitter/nvim-treesitter'
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
Plug 'tpope/vim-fugitive'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-lualine/lualine.nvim'

vim.call('plug#end')

require("avi.keymaps")
-- require("avi.treesitter")
require('lsp.mason')
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
    dotfiles = true,
  },
})
require('avi.statusline')
require('avi.git-vcs')

vim.cmd 'colorscheme gruvbox'

-- TODO open terminal in insert mode, so that it could be quickly exited with <cr>
-- autocmd TermOpen * startinsert
