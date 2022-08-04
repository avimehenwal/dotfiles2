-- vim movements unimpaired using [ prev and ] next
-- https://github.com/tpope/vim-unimpaired/blob/master/doc/unimpaired.txt
vim.keymap.set("n", "[q", "<cmd>cprevious<cr>", {buffer=0})
vim.keymap.set("n", "]q", "<cmd>cnext<cr>", {buffer=0})

-- diagnostics can read data from multiple sources like LSPs and linters and formatter tools
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {buffer=0})
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {buffer=0})

-- code actions / Refactor
-- actual understanding of code from LSP :wa to save changes in other files 
vim.keymap.set("n", "rr", vim.lsp.buf.rename, {buffer=0})

vim.keymap.set("n", "<leader>fb", "<cmd>Telescope file_browser<cr>", {remap=false})

print("avi:keymaps loaded")