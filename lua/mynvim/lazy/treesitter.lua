return {
	"nvim-treesitter/nvim-treesitter",
	run = ":TSUpdate",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
        "nvim-treesitter/playground",
	},
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "c", "cpp", "lua", "rust", "python" },
			highlight = {
				enable = true,
			},
			textobjects = {
				select = {
					enable = true,
					lookahead = true,
					keymaps = {
						["af"] = "@function.outer",
						["if"] = "@function.inner",
						["ac"] = "@class.outer",
						["ic"] = "@class.inner",
					},
				},
			},
		})
	end,
}
