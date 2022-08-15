-- insert mode auto-closing constructs
vim.keymap.set("i",  "\"",     "\"\"<left>")
vim.keymap.set("i",  "{",      "{}<left>")
vim.keymap.set("i",  "\'",     "\'\'<left>")
vim.keymap.set("i",  "(",      "()<left>")
vim.keymap.set("i",  "[",      "[]<left>")
vim.keymap.set("i",  "{<cr>",  "{<cr>}<esc>0")
vim.keymap.set("i",  "3`",     "<esc>3i`<esc>yypO")                            -- only for MD files
