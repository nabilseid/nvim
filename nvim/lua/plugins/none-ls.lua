return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
			},
		})

		vim.keymap.set("n", "<S-f>", vim.lsp.buf.format, {})
    -- code actions, need to be separated from lsp ca
    -- diagnostics
    -- completion
    -- hover
	end,
}
