return {
    "windwp/nvim-autopairs",
    config = function()
        require('nvim-autopairs').setup({
            disable_filetype = { "TelescopePrompt" },
            check_ts = true,
        })
    end,
}

