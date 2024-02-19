return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>rr", ":Telescope find_files find_command=rg,--hidden,--files,-u<CR>", {})
		vim.keymap.set("n", "<leader>fg", ":Telescope live_grep find_command=rg,--ignore,--hidden,--files,-u<CR>", {})
		vim.keymap.set("n", "<leader>ff", builtin.live_grep, {})
	end,
}
