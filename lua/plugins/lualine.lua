return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status")

    lualine.setup({
      options = {
        component_separators = { left = '|', right = '|'},
        section_separators = { left = '|', right = '|'},
      },
      sections = {
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ffbd5e" },
          },
          { "encoding" },
          { "fileformat" },
          { "filetype" },
        },
      },
    })

  end
}
