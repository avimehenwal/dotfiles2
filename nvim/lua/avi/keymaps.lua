-- vim movements unimpaired using [ prev and ] next
-- https://github.com/tpope/vim-unimpaired/blob/master/doc/unimpaired.txt
vim.keymap.set("n", "[q", "<cmd>cprevious<cr>")
vim.keymap.set("n", "]q", "<cmd>cnext<cr>")

-- diagnostics can read data from multiple sources like LSPs and linters and formatter tools
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {buffer=0})
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {buffer=0})

-- quickly navigate between open file buffers
vim.keymap.set("n", "]b", "<cmd>bnext<cr>")
vim.keymap.set("n", "[b", "<cmd>bprevious<cr>")

-- code actions / Refactor
-- actual understanding of code from LSP :wa to save changes in other files 
vim.keymap.set("n", "rr", vim.lsp.buf.rename, {buffer=0})

vim.keymap.set("n", "<c-p>", "<cmd>Telescope find_files<cr>", {remap=false})
vim.keymap.set("n", "<c-b>", "<cmd>NvimTreeToggle<cr>", {remap=false})

print("avi:keymaps loaded")
