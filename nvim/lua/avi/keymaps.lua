local opts = { noremap = true, silent = false }

-- vim movements unimpaired using [ prev and ] next
-- https://github.com/tpope/vim-unimpaired/blob/master/doc/unimpaired.txt
vim.keymap.set("n", "[q", "<cmd>cprevious<cr>")
vim.keymap.set("n", "]q", "<cmd>cnext<cr>")

-- diagnostics can read data from multiple sources like LSPs and linters and formatter tools
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {buffer=0})
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {buffer=0})

-- quickly navigate between open file buffers
vim.keymap.set("n", "]b", "<cmd>bnext<cr>", opts)
vim.keymap.set("n", "[b", "<cmd>bprevious<cr>", opts)
vim.keymap.set("n", "]B", "<cmd>blast<cr>", opts)
vim.keymap.set("n", "[B", "<cmd>bfirst<cr>", opts)

-- code actions / Refactor
-- actual understanding of code from LSP :wa to save changes in other files 
vim.keymap.set("n", "lrn", vim.lsp.buf.rename, {buffer=0})
vim.keymap.set("n", "lr", vim.lsp.buf.references, {buffer=0})
vim.keymap.set("n", "lca", vim.lsp.buf.code_action, {buffer=0})

vim.keymap.set("n", "<c-p>", "<cmd>Telescope find_files<cr>", {remap=false})
vim.keymap.set("n", "<leader>b", "<cmd>NvimTreeToggle<cr>", {remap=false})

