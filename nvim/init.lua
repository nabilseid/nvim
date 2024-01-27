vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2

vim.o.autoindent = true
vim.o.smartindent = true

vim.o.number = true
vim.o.colorcolumn = "80"
vim.opt.termguicolors = true -- termguicolors for bufferline

vim.g.mapleader = " "

-- Go to prev diagnostics
vim.keymap.set("n", "<leader>db", vim.diagnostic.goto_prev)
-- Go to next diagnostics
vim.keymap.set("n", "<leader>df", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>of", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>sll", vim.diagnostic.setloclist)

vim.keymap.set("n", "gt", "<cmd>bnext<cr>", { desc = "Go to next buffer" })
vim.keymap.set("n", "gT", "<cmd>bprevious<cr>", { desc = "Go to previous buffer" })
vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Delete current buffer" })

vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<CR>", { desc = "Open lazygit" })

-- lazy plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
