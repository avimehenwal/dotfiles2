-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

require("lsp")

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
