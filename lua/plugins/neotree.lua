return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				window = {
					mappings = {
						["<C-u>"] = "image_wezterm", -- " or another map
					},
				},
				filtered_items = {
					visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
					hide_dotfiles = false,
					hide_gitignored = true,
				},
				commands = {
					image_wezterm = function(state)
						local node = state.tree:get_node()
						if node.type == "file" then
							require("image_preview").PreviewImage(node.path)
						end
					end,
				},
			},
			window = {
				mappings = {
					["<C-r>"] = "rename",
					["<C-n>"] = "add",
				},
			},
		})

		vim.keymap.set("n", "<leader>n", ":Neotree toggle<CR>")
		vim.keymap.set("n", "<leader>a", ":Neotree focus<CR>")
	end,
}
