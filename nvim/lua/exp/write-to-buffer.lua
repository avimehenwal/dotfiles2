local bufnr = 7

-- set text in a buffer
-- vim.api.nvim_buf_set_lines(bufnr, 0, 0, false, {"hello", "world"})

-- react to events inside neovim -> autocommands
vim.api.nvim_create_autocmd("BufWritePost", {
    group = vim.api.nvim_create_augroup("RunGoProgramOnSave", {clear = true}),
    pattern = "sample.go",
    callback = function()
        print("wow we saved the file")
        -- run a external command and react to it accordingly
        vim.fn.jobstart({"go", "run", "sample.go"}, {
            stdout_buffered = true,
            on_stdout = function(_, data)
                if data then
                    vim.api.nvim_buf_set_lines(bufnr, -1, -1, false, data)
                end
            end,
            on_stderr = function(_, data)
                if data then
                    vim.api.nvim_buf_set_lines(bufnr, -1, -1, false, data)
                end
            end
        })
    end
})
