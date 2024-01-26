return {
  "Djancyp/better-comments.nvim",
  config = function()
    require("better-comment").Setup({
      tags = {
        {
          name = "TODO",
          fg = "white",
          bg = "#0a7aca",
          bold = true,
          virtual_text = "",
        },
        {
          name = "NEW",
          fg = "white",
          bg = "red",
          bold = false,
          virtual_text = "",
        },
      },
    })
  end,
}
