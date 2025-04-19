return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  lazy = false,
  config = function()
    local gruvbox = require("gruvbox")

    gruvbox.setup({
      transparent_mode = false,
      palette_overrides = {
        bg0  = "#000000",
        bg1  = "#0c0c0c",
        bg2  = "#1a1a1a",
        bg3  = "#262626",
        bg4  = "#323232",

        fg0 = "#e6e6e6",
        fg1 = "#bfbfbf",
        fg2 = "#999999",
        fg3 = "#737373",

        red           = "#ea3d54",
        neutral_red   = "#c63546",
        light_red     = "#f28a95",
        bright_red    = "#ff5f75",

        green         = "#78bd65",
        neutral_green = "#5f9c4f",
        light_green   = "#a4d69a",
        bright_green  = "#a1db8a",

        yellow        = "#fedd38",
        neutral_yellow= "#d1b42f",
        light_yellow  = "#fff2a3",
        bright_yellow = "#fff168",

        blue          = "#4fb3d8",
        neutral_blue  = "#3e8db0",
        light_blue    = "#8ac9eb",
        bright_blue   = "#7fd1ff",

        purple        = "#b978ab",
        neutral_purple= "#996f91",
        light_purple  = "#d9a9ca",
        bright_purple = "#d89bd2",

        aqua          = "#78bd65",
        neutral_aqua  = "#5f9c4f",
        light_aqua    = "#a4d69a",
        bright_aqua   = "#a1db8a",

        orange        = "#ee7b29",
        neutral_orange= "#c36822",
        light_orange  = "#f5b479",
        bright_orange = "#ff9a4c",
      },
    })
    vim.cmd("colorscheme gruvbox")
  end,
}
