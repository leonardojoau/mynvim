return {
	{
		"loctvl842/monokai-pro.nvim",
		config = function()
			require("monokai-pro").setup({
				transparent_background = false,
				terminal_colors = true,
				devicons = true,
				styles = {
					comment = { italic = true },
					keyword = { italic = true },
					type = { italic = true },
					storageclass = { italic = true },
					structure = { italic = true },
					parameter = { italic = true },
					annotation = { italic = true },
					tag_attribute = { italic = true },
				},
				filter = "pro",
				day_night = {
					enable = false,
					day_filter = "pro",
					night_filter = "spectrum",
				},
				inc_search = "background",
				background_clear = {
					"toggleterm",
					"telescope",
					"renamer",
					"notify",
				},
				plugins = {
					bufferline = {
						underline_selected = false,
						underline_visible = false,
					},
					indent_blankline = {
						context_highlight = "default",
						context_start_underline = false,
					},
				},
				override = function(cs, p, Config, hp) end,
			})
			vim.cmd("colorscheme monokai-pro")
		end,
	},
}
