return {
  "folke/todo-comments.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "nvim-lua/plenary.nvim" },

  config = function()
    local todo_comments = require("todo-comments")

    local mapkey = vim.keymap

    mapkey.set("n", "]t", function()
      todo_comments.jump_next()
    end, { desc = "Next todo comment"})

    mapkey.set("n", "[t", function()
      todo_comments.jump_prev()
    end, { desc = "Previous todo comment"})

    todo_comments.setup()
  end,
}
