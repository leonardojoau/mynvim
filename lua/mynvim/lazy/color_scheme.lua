return {
    {
        "catppuccin/nvim",
        name = "catppuccin",  -- Assign a name to the plugin
        lazy = false,         -- Load the plugin immediately
        priority = 1000,      -- Ensure the theme loads first
        config = function()
            require("catppuccin").setup({
                flavour = "mocha",  -- Choose your preferred flavour: latte, frappe, macchiato, mocha
                background = {
                    light = "latte",  -- Set the light background flavour
                    dark = "mocha",   -- Set the dark background flavour
                },
                transparent_background = true,  -- Enable transparency
                show_end_of_buffer = false,     -- Do not show `~` characters after the end of buffers
                term_colors = true,             -- Enable terminal colors
                dim_inactive = {
                    enabled = false,             -- Disable dimming of inactive windows
                    shade = "dark",
                    percentage = 0.15,
                },
                no_italic = false,               -- Disable italic style
                no_bold = false,                 -- Disable bold style
                styles = {
                    comments = { "italic" },     -- Style for comments
                    conditionals = { "italic" }, -- Style for conditionals
                    loops = {},                  -- Style for loops
                    functions = {},              -- Style for functions
                    keywords = {},               -- Style for keywords
                    strings = {},                -- Style for strings
                    variables = {},              -- Style for variables
                    numbers = {},                -- Style for numbers
                    booleans = {},               -- Style for booleans
                    properties = {},             -- Style for properties
                    types = {},                  -- Style for types
                    operators = {},              -- Style for operators
                },
                integrations = {
                    cmp = true,                  -- Enable integration with nvim-cmp
                    gitsigns = true,             -- Enable integration with gitsigns.nvim
                    nvimtree = true,             -- Enable integration with nvim-tree.lua
                    telescope = true,            -- Enable integration with telescope.nvim
                    treesitter = true,           -- Enable integration with nvim-treesitter
                    notify = false,              -- Disable integration with notify.nvim
                },
            })

            -- Apply the Catppuccin theme
            vim.cmd([[colorscheme catppuccin]])

            -- Remove the background to ensure transparency (if needed)
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end
    }
}
