return {
	{
		"f-person/git-blame.nvim",
		config = function()
			require("gitblame").setup({})
		end,
	},
	{
		"tpope/vim-fugitive",
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},
}
