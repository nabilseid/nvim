return {
  "akinsho/bufferline.nvim",
  version = "*",
  config = function()
    require("bufferline").setup({
      options = {
        offsets = {
          filetype = "NeoTree",
          text = "File Explorer",
          text_align = "left",
          separator = true,
        },
      },
    })
  end,
}
