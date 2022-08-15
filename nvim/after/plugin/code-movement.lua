-- move code around in normal and visual mode

local opts = { noremap = true, silent = false }

vim.keymap.set("n",  "<A-j>",     "<cmd>move .+1<cr>==", opts)
vim.keymap.set("n",  "<A-k>",     "<cmd>move .-2<cr>==", opts)
-- vim.keymap.set("v",  "<A-j>",     "<cmd>move '>+1<cr>gv=gv", opts)
-- vim.keymap.set("v",  "<A-k>",     "<cmd>move '<-2<cr>gv=gv", opts)
-- vim.keymap.set("n",  "<c-/>",     "<cmd>CommentToggle<cr>", opts)
