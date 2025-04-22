return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status")

    -- Bubbles config for lualine (Modified for an-old-hope)
    -- Author: lokesh-krishna
    -- MIT license, see LICENSE for more details.

    -- stylua: ignore
    local colors = {
      blue   = '#4fb3d8',  -- Muted Blue (an-old-hope)
      cyan   = '#4fb3d8',  -- Bright Cyan (an-old-hope)
      black  = '#000000',  -- Dark background (black)
      white  = '#d1d1d1',  -- Very light gray (for text)
      red    = '#ea3d54',  -- Soft Red
      violet = '#78bd65',  -- Muted Purple (changed to match theme)
      grey   = '#3f444a',  -- Muted Grey for the background
    }

    local bubbles_theme = {
      normal = {
        a = { fg = colors.black, bg = colors.violet },
        b = { fg = colors.white, bg = colors.grey },
        c = { fg = colors.white },
      },

      insert = { a = { fg = colors.black, bg = colors.blue } },
      visual = { a = { fg = colors.black, bg = colors.cyan } },
      replace = { a = { fg = colors.black, bg = colors.red } },

      inactive = {
        a = { fg = colors.white, bg = colors.black },
        b = { fg = colors.white, bg = colors.black },
        c = { fg = colors.white },
      },
    }

    lualine.setup {
      options = {
        theme = bubbles_theme,
        component_separators = '|',  -- Rectangle-like separator
        section_separators = { left = '▏', right = '▏' },  -- Rectangle-like separator
      },
      sections = {
        lualine_a = { { 'mode', separator = { left = '▏' }, right_padding = 2 } },
        lualine_b = { 'filename', 'branch' },
        lualine_c = {
          '%=', --[[ add your center components here in place of this comment ]]
        },
        lualine_x = {},
        lualine_y = { 'filetype', 'progress' },
        lualine_z = {
          { 'location', separator = { right = '▏' }, left_padding = 2 },
        },
      },
      inactive_sections = {
        lualine_a = { 'filename' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' },
      },
      tabline = {},
      extensions = {},
    }


  end
}
