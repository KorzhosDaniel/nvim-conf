local colors = {
  black        = '#0c0c0c',
  white        = '#f4f5f7',
  red          = '#ea3d54',
  green        = '#78bd65',
  blue         = '#4fb3d8',
  yellow       = '#fedd38',
  orange       = '#ee7b29',
  gray         = '#000000',
  darkgray     = '#0c0c0c',
  lightgray    = '#1a1a1a',
  inactivegray = '#323232',
}


return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status")

    lualine.setup({
      options = {
        icons_enabled = true,
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        },
        theme = {
          normal = {
            a = { bg = colors.green, fg = colors.black, gui = 'bold' },
            b = { bg = colors.lightgray, fg = colors.white },
            c = { bg = colors.darkgray, fg = colors.white },
          },
          insert = {
            a = { bg = colors.blue, fg = colors.black, gui = 'bold' },
            b = { bg = colors.lightgray, fg = colors.white },
            c = { bg = colors.lightgray, fg = colors.white },
          },
          visual = {
            a = { bg = colors.yellow, fg = colors.black, gui = 'bold' },
            b = { bg = colors.lightgray, fg = colors.white },
            c = { bg = colors.inactivegray, fg = colors.white },
          },
          replace = {
            a = { bg = colors.red, fg = colors.black, gui = 'bold' },
            b = { bg = colors.lightgray, fg = colors.white },
            c = { bg = colors.black, fg = colors.white },
          },
          command = {
            a = { bg = colors.orange, fg = colors.black, gui = 'bold' },
            b = { bg = colors.lightgray, fg = colors.white },
            c = { bg = colors.inactivegray, fg = colors.white },
          },
          inactive = {
            a = { bg = colors.darkgray, fg = colors.white, gui = 'bold' },
            b = { bg = colors.darkgray, fg = colors.white },
            c = { bg = colors.darkgray, fg = colors.white },
          },
        },
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ffbd5e" },
          },
          'encoding',
          'fileformat',
          'filetype'
        },
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {}
    })
  end
}
