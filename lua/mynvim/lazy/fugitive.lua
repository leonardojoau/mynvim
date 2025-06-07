return {
    "tpope/vim-fugitive",
    lazy = false,
    keys = {
        { "<leader>gs", "<cmd>Git<CR>", desc = "Git: status" },
        { "<leader>gb", "<cmd>Git blame<CR>", desc = "Git: blame" },
        { "<leader>gc", "<cmd>Git commit<CR>", desc = "Git: commit" },
        { "<leader>gpl", "<cmd>Git pull<CR>", desc = "Git: pull" },
        { "<leader>gpu", "<cmd>Git push<CR>", desc = "Git: push" },
        { "<leader>gw", "<cmd>Gwrite<CR>", desc = "Git: write current file" },
    },
    config = function()
        vim.api.nvim_create_autocmd("FileType", {
            pattern = { "fugitive", "fugitiveblame", "git" },
            callback = function()
                vim.keymap.set("n", "q", "<cmd>close<CR>", { buffer = true, silent = true })
            end,
        })
        vim.api.nvim_create_autocmd("BufReadPost", {
            callback = function(args)
                local bufname = vim.api.nvim_buf_get_name(args.buf)
                if bufname:match("^fugitive://") or vim.wo.diff then
                    vim.keymap.set("n", "q", "<cmd>q<CR>", { buffer = args.buf, silent = true })
                end
            end,
        })
    end,
}
