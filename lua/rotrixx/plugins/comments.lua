return {
  -- Toggle line comments
  "numToStr/Comment.nvim",
  keys = {
    {
      "<leader>/", function()
        require("Comment.api").toggle.linewise.count(vim.v.count > 0 and vim.v.count or 1)
      end,
      desc = "Comment line"
    },
    {
      "<leader>/",
      "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
      mode = "v",
      desc = "Comment in visual mode"
    }
  }
}
