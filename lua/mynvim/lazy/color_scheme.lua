return {
    {
        "ellisonleao/gruvbox.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            -- Set gruvbox options for a brighter theme
            vim.g.gruvbox_material_background = 'hard'  -- Use 'hard' for high contrast
            vim.g.gruvbox_material_better_performance = 1  -- Improves performance with some trade-offs
            vim.g.gruvbox_material_foreground = 'material'  -- Use brighter, more material-like colors
            
            -- Optionally, you can try other configurations for lighter colors
            -- vim.g.gruvbox_material_foreground = 'mix'  -- For a mix between the original and material colors

            -- Enable transparency
            vim.g.gruvbox_material_transparent_background = 1
            
            -- Apply the gruvbox theme
            vim.cmd([[colorscheme gruvbox]])

            -- Remove the background to enable transparency
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end
    }
}

