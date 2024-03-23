return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("catppuccin")
    end,
  },
  {
    {
      "projekt0n/github-nvim-theme",
      lazy = false,
      priority = 1000,
      config = function()
        require("github-theme").setup({
          -- ...
        })
      end,
    },
  },
}
