--require("plugins")

vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2

vim.o.colorcolumn = '80'

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

local plugins = {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
  { 
    "nvim-telescope/telescope.nvim", tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" }
  }
}

local opts = {}

require("lazy").setup(plugins, opts)

-- plugins.telescope.lua
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-f>', builtin.find_files, {})
vim.keymap.set('n', '<C-r>', builtin.live_grep, {})
vim.keymap.set('n', '<C-b>', builtin.buffers, {})
vim.keymap.set('n', '<C-h>', builtin.help_tags, {})


-- treesitter
local configs = require("nvim-treesitter.configs")

configs.setup({
  ensure_installed = { "lua", "vim", "vimdoc", "python", "sql", "elixir", "javascript", "html" },
  sync_install = false,
  highlight = { enable = true },
  indent = { enable = true },  
})

vim.cmd.colorscheme "catppuccin-macchiato"
