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
        commands = {
          image_wezterm = function(state)
            local node = state.tree:get_node()
            if node.type == "file" then
              require("image_preview").PreviewImage(node.path)
            end
          end,
        },
      },
    })

    vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>")
  end,
}
