-- This file can be loaded by calling `lua require('plugins')` from your init.vim

vim.g.mapleader = " "
vim.g.do_filetype_lua = 1
vim.g.did_load_filetypes = 0
vim.g.material_style = "darker"

vim.opt.backup = false
vim.opt.colorcolumn = "120"
vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.hidden = true
vim.opt.mouse = "a"
vim.opt.scrolloff = 12
vim.opt.shortmess = vim.opt.shortmess + { I = true }
vim.opt.termguicolors = true
vim.opt.timeoutlen = 1000
vim.opt.updatetime = 8000

vim.o.autoindent = true
vim.o.cursorline = true
vim.o.expandtab = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.shiftwidth = 4
vim.o.signcolumn = "yes:1"
vim.o.tabstop = 4
vim.o.wrap = false

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

require("lsp")
require("avi.keymaps")

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use {
    'nvim-telescope/telescope.nvim',
    requires = {
	    {'nvim-lua/plenary.nvim'},
	    { "nvim-telescope/telescope-file-browser.nvim" },
	    -- { "kyazdani42/nvim-web-devicons"}
    }
  }

  -- lsp
  use 'neovim/nvim-lspconfig'
end)
