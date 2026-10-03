return {
  -- Statusline: flat separators
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local ok, theme = pcall(require, "neofusion.lualine")
      if ok then
        opts.options.theme = theme
      end
      opts.options.component_separators = { left = "", right = "" }
      opts.options.section_separators = { left = "", right = "" }
    end,
  },

  -- Tabs: thicker separators
  {
    "akinsho/bufferline.nvim",
    opts = { options = { separator_style = "thick" } },
  },

  -- Completion menu: rounded borders
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        menu = { border = "rounded" },
        documentation = { window = { border = "rounded" } },
      },
    },
  },

  -- Picker + terminal: vertical layout, floating terminal
  {
    "folke/snacks.nvim",
    opts = {
      picker = { layout = { preset = "vertical" } },
      terminal = { win = { position = "float", border = "rounded" } },
    },
  },
}
