return {
	"brenoprata10/nvim-highlight-colors",
	config = function()
		require("nvim-highlight-colors").setup({
			render = "background",
			enable_named_colors = true,
			enable_tailwind = false,
			custom_colors = {
				{ label = "%-%-theme%-font%-color", color = "#fff" },
				{ label = "%-%-theme%-background%-color", color = "#23222f" },
				{ label = "%-%-theme%-primary%-color", color = "#0f1219" },
				{ label = "%-%-theme%-secondary%-color", color = "#5a5d64" },
				{ label = "%-%-theme%-contrast%-color", color = "#fff" },
				{ label = "%-%-theme%-accent%-color", color = "#55678e" },
			},
		})
	end,
}
