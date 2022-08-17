local set = vim.opt

-- set.colorcolumn = "120"
set.guifont = { "FiraCode Nerd Font", ":h13"}
set.backup = false
set.completeopt = "menu,menuone,noselect"
set.hidden = false                               -- https://github.com/neovim/neovim/issues/17841                    
set.termguicolors = true

-- use external grep program to use with vim
set.grepformat = "%f:%l:%c:%m"
set.grepprg = "rg --vimgrep --smart-case --no-heading"

vim.o.autoindent = true
vim.o.cursorline = true
vim.o.expandtab = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.wrap = false

set.wildmenu   = true                            -- tab complete on command line
set.ignorecase = true                            -- case insensitive search...
set.smartcase  = true                            -- unless I use caps
set.hlsearch   = true                            -- highlight matching text
set.incsearch  = true                            -- update results while I type
