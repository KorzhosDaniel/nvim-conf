return {
  "gbprod/substitute.nvim",
  event = { "BufReadPre", "BufNewFile" },

  config = function()
    local substitute = require("substitute")
    local mapkey = vim.keymap
    substitute.setup()

    mapkey.set("n", "s", substitute.operator, { desc = "Substitute with motion" })
    mapkey.set("n", "ss", substitute.line, { desc = "Substitute line" })
    mapkey.set("n", "S", substitute.eol, { desc = "Substitute to end of line" })
    mapkey.set("x", "s", substitute.visual, { desc = "Substitute in visual mode" })
  end
}
