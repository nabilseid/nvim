return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        disabled_filetypes = {
          winbar = { "neo-tree", "alpah" },
          statusline = {},
        },
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
            colored = true,      -- Displays filetype icon in color if set to true
            icon_only = true,    -- Display only an icon for filetype
            icon = { align = "left" }, -- Display filetype icon on the right hand side
            -- icon =    {'X', align='right'}
            -- Icon string ^ in table is ignored in filetype component
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
              modified = " ●", -- Text to show when the buffer is modified
              -- alternate_file = "#", -- Text to show to identify the alternate file
              directory = "", -- Text to show when the buffer is a directory
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
              modified = " ●", -- Text to show when the buffer is modified
              -- alternate_file = "#", -- Text to show to identify the alternate file
              directory = "", -- Text to show when the buffer is a directory
            },
          },
        },
        lualine_z = {},
      },
    })
  end,
}
