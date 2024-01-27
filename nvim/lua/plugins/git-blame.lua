return {
	"f-person/git-blame.nvim",

	config = function()
		local git_blame = require("gitblame")
		-- This disables showing of the blame text next to the cursor
		vim.g.gitblame_display_virtual_text = 0
	end,
}
