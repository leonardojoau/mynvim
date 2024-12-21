return {
    "windwp/nvim-autopairs",
    config = function()
        require('nvim-autopairs').setup({
            disable_filetype = { "TelescopePrompt" },  -- Disable autopairs in specific filetypes
            check_ts = true,  -- Enable Treesitter integration for better context-based pairing
        })
    end,
}

