return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set('n', '<C-n>', ':Neotree source=filesystem reveal=true position=left toggle=true<CR>')
    vim.keymap.set('n', '<C-m>', ':Neotree position=float source=filesystem<CR>')
    vim.keymap.set('n', '<C-g>', ':Neotree float git_status<CR>')
  end
}
