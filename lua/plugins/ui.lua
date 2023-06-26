return {
  { "goolord/alpha-nvim", enabled = false },

  {
    "echasnovski/mini.indentscope",
    opts = {
      draw = {
        animation = require("mini.indentscope").gen_animation.none(),
      },
    },
  },

  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        style_preset = {
          -- require("bufferline").style_preset.minimal,
          require("bufferline").style_preset.no_italic,
        },
        show_close_icon = false,
        show_buffer_close_icons = false,
        offsets = {
          -- {
          --   filetype = "neo-tree",
          --   separator = true,
          -- },
        },
      },
    },
  },

  {
    "nvim-lualine/lualine.nvim",
    opts = {
      sections = {
        lualine_c = {
          {
            "diagnostics",
            symbols = {
              error = require("lazyvim.config").icons.diagnostics.Error,
              warn = require("lazyvim.config").icons.diagnostics.Warn,
              info = require("lazyvim.config").icons.diagnostics.Info,
              hint = require("lazyvim.config").icons.diagnostics.Hint,
            },
          },
          { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
          { "filename", path = 1, symbols = { modified = "  ", readonly = "", unnamed = "" } },
          { "navic", color_correction = "dynamic", padding = { left = 1, right = 0 } },
        },
        lualine_y = {
          { "progress", separator = " ", padding = { left = 1, right = 1 } },
        },
        lualine_z = {
          { "location", padding = { left = 0, right = 1 } },
        },
      },
    },
  },
}
