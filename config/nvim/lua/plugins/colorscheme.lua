-- Linux Ocean theme — matches waybar / wofi / kitty / swaync
return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "linux-ocean",
    },
  },

  {
    "folke/tokyonight.nvim",
    enabled = false,
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    enabled = false,
  },

  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local ocean = {
        normal = {
          a = { fg = "#f8fdff", bg = "#00334d", gui = "bold" },
          b = { fg = "#00334d", bg = "#b8e6f7" },
          c = { fg = "#00334d", bg = "#f8fdff" },
        },
        insert = {
          a = { fg = "#00334d", bg = "#24a9e8", gui = "bold" },
          b = { fg = "#00334d", bg = "#b8e6f7" },
          c = { fg = "#00334d", bg = "#f8fdff" },
        },
        visual = {
          a = { fg = "#f8fdff", bg = "#0075bc", gui = "bold" },
          b = { fg = "#00334d", bg = "#b8e6f7" },
          c = { fg = "#00334d", bg = "#f8fdff" },
        },
        replace = {
          a = { fg = "#f8fdff", bg = "#c62828", gui = "bold" },
          b = { fg = "#00334d", bg = "#b8e6f7" },
          c = { fg = "#00334d", bg = "#f8fdff" },
        },
        command = {
          a = { fg = "#00334d", bg = "#b8e6f7", gui = "bold" },
          b = { fg = "#00334d", bg = "#e8f6fc" },
          c = { fg = "#00334d", bg = "#f8fdff" },
        },
        inactive = {
          a = { fg = "#00334d", bg = "#b8e6f7" },
          b = { fg = "#4a7085", bg = "#f8fdff" },
          c = { fg = "#6a8fa3", bg = "#f8fdff" },
        },
      }

      opts.options = opts.options or {}
      opts.options.theme = ocean
      opts.options.component_separators = { left = "", right = "" }
      opts.options.section_separators = { left = "", right = "" }
      opts.options.globalstatus = true
      return opts
    end,
  },

  {
    "akinsho/bufferline.nvim",
    optional = true,
    opts = {
      options = {
        separator_style = "thick",
        always_show_bufferline = true,
      },
      highlights = {
        fill = { bg = "#f8fdff" },
        background = { fg = "#00334d", bg = "#b8e6f7" },
        buffer_selected = { fg = "#f8fdff", bg = "#00334d", bold = true, italic = false },
        buffer_visible = { fg = "#00334d", bg = "#e8f6fc" },
        indicator_selected = { fg = "#24a9e8", bg = "#00334d" },
        separator = { fg = "#f8fdff", bg = "#b8e6f7" },
        separator_selected = { fg = "#f8fdff", bg = "#00334d" },
        modified = { fg = "#24a9e8", bg = "#b8e6f7" },
        modified_selected = { fg = "#24a9e8", bg = "#00334d" },
        tab = { fg = "#00334d", bg = "#b8e6f7" },
        tab_selected = { fg = "#f8fdff", bg = "#00334d", bold = true },
      },
    },
  },
}
