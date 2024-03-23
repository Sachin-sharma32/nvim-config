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
        {
          name = "!",
          fg = "white",
          bg = "",
          bold = false,
          virtual_text = "",
        },
        {
          name = "?",
          fg = "#3498DB",
          bold = false,
          virtual_text = "",
        },
        {
          name = "//",
          fg = "#474747",
          bold = false,
          virtual_text = "",
        },
        {
          name = "~",
          fg = "#FF8C00",
          bold = false,
          virtual_text = "",
        },
        {
          name = "*",
          fg = "#24f53a",
          bold = false,
          virtual_text = "",
        },
      },
    })
  end,
}
