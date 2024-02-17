return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({})
    vim.keymap.set("t", "<leader>j", "<C-\\><C-n>:ToggleTerm<CR>", {})
    vim.keymap.set("n", "<leader>h", "<Esc>:ToggleTerm direction=horizontal<CR>", {})
    vim.keymap.set("t", "3<leader>j", "<C-\\><C-n>:ToggleTerm direction=float<CR>", {})
    vim.keymap.set("n", "<leader>j", "<Esc>:ToggleTerm direction=float<CR>a<BS>", {})
  end,
}
