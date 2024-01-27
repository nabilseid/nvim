return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local git_blame = require("gitblame")

		require("lualine").setup({
			options = {
				disabled_filetypes = {
					winbar = { "neo-tree", "alpha" },
					statusline = {},
				},
			},

			sections = {
				lualine_c = { { git_blame.get_current_blame_text, cond = git_blame.is_blame_text_available } },
			},

			winbar = {
				lualine_a = {
					{
						"filename",
						file_status = true,
						newfile_status = true,
						path = 1,
						symbols = {
							modified = "[+]",
							readonly = "[-]",
							unnamed = "[No Name]",
							newfile = "[New]",
						},
					},
				},
				lualine_b = {},
				lualine_c = {
					{
						"filetype",
						colored = true,
						icon_only = true,
						icon = { align = "left" },
					},
				},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {
					{
						"buffers",
						show_modified_status = true,
						use_mode_colors = true,
						symbols = {
							modified = " ●",
							alternate_file = "",
							directory = "",
						},
					},
				},
			},

			inactive_winbar = {
				lualine_a = {
					{
						"filename",
						file_status = true,
						newfile_status = true,
						path = 1,
						symbols = {
							modified = "[+]",
							readonly = "[-]",
							unnamed = "[No Name]",
							newfile = "[New]",
						},
					},
				},
				lualine_b = {
					{
						"filetype",
						colored = true,
						icon_only = true,
						icon = { align = "left" },
					},
				},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {
					{
						"buffers",
						show_modified_status = true,
						use_mode_colors = true,
						symbols = {
							modified = " ●",
							alternate_file = "",
							directory = "",
						},
					},
				},
				lualine_z = {},
			},
		})
	end,
}
