return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  lazy = false,
  config = function()
    local gruvbox = require("gruvbox")

    gruvbox.setup({
			borderless_pickers = false,
      transparent_mode = false,
      palette_overrides = {

        dark0_hard  = "#000000",
        dark0       = "#000000",
        dark0_soft  = "#0c0c0c",
        dark1       = "#0c0c0c",
        dark2       = "#1a1a1a",
        dark3       = "#262626",
        dark4       = "#323232",

        light0_hard = "#ffffff",
        light0      = "#f9fafb",
        light0_soft = "#f4f5f7",
        light1      = "#e9eaec",
        light2      = "#d9dbe0",
        light3      = "#c3c5c9",
        light4      = "#a1a3a7",

        -- Colors (based on An Old Hope)
        red             = "#ea3d54",
        neutral_red     = "#ea3d54",
        faded_red       = "#c23242",
        bright_red      = "#ff465f",
        dark_red_hard   = "#2a1113",
        dark_red        = "#3c1417",
        dark_red_soft   = "#4a1a1d",
        light_red_hard  = "#ffb1b6",
        light_red       = "#ff9fa4",
        light_red_soft  = "#fc8f96",

        green           = "#78bd65",
        neutral_green   = "#68a957",
        faded_green     = "#4e8543",
        bright_green    = "#94dd6a",
        dark_green_hard = "#1e2a1a",
        dark_green      = "#2d3a26",
        dark_green_soft = "#3a4a32",
        light_green_hard= "#b2dfad",
        light_green     = "#c3edba",
        light_green_soft= "#d4f7c8",

        yellow          = "#fedd38",
        neutral_yellow  = "#e0c030",
        faded_yellow    = "#bda429",
        bright_yellow   = "#fff268",

        blue            = "#4fb3d8",
        neutral_blue    = "#3e8db0",
        faded_blue      = "#2e6c8c",
        bright_blue     = "#58cfff",

        -- From AOH
        magenta         = "#b978ab",
        bright_purple   = "#b978ab",
        neutral_purple  = "#a9649a",
        faded_purple    = "#8f4d82",

        aqua            = "#4fb3d8",
        neutral_aqua    = "#419bb5",
        faded_aqua      = "#2f7e99",
        bright_aqua     = "#61d7ff",
        dark_aqua_hard  = "#1a2b33",
        dark_aqua       = "#213740",
        dark_aqua_soft  = "#2b454f",
        light_aqua_hard = "#bfe6f2",
        light_aqua      = "#c8effa",
        light_aqua_soft = "#d4f6ff",

        orange          = "#ee7b29",
        neutral_orange  = "#d86d21",
        faded_orange    = "#b25b1b",
        bright_orange   = "#ff9944",

        gray            = "#5b6268",
      },
    })
  end,
}
