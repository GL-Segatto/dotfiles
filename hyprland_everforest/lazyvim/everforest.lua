return {
  {
    "neanias/everforest-nvim",
    lazy = false,
    priority = 1000,

    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },

    config = function(_, opts)
      require("everforest").setup(opts)
      vim.cmd.colorscheme("everforest")

      local transparent_groups = {
        -- Editor
        "Normal",
        "NormalNC",
        "NormalFloat",
        "FloatBorder",
        "FloatTitle",
        "SignColumn",
        "EndOfBuffer",
        "WinSeparator",

        -- Lazy
        "LazyNormal",
        "LazyButton",
        "LazyButtonActive",
        "LazySpecial",

        -- Telescope
        "TelescopeNormal",
        "TelescopeBorder",
        "TelescopePromptNormal",
        "TelescopePromptBorder",
        "TelescopeResultsNormal",
        "TelescopePreviewNormal",

        -- Neo-tree
        "NeoTreeNormal",
        "NeoTreeNormalNC",
        "NeoTreeEndOfBuffer",

        -- Mason
        "MasonNormal",

        -- WhichKey
        "WhichKeyFloat",

        -- Noice
        "NoiceCmdlinePopup",
        "NoiceCmdlinePopupBorder",

        -- Notify
        "NotifyBackground",
      }

      for _, group in ipairs(transparent_groups) do
        vim.api.nvim_set_hl(0, group, { bg = "none" })
      end
    end,
  },
}
