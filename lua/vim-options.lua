vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.wo.number = true
vim.wo.relativenumber = true
vim.g.mapleader = " "
vim.keymap.set("i", "jj", "<Esc>", {})
vim.cmd("autocmd VimEnter * :ToggleTerm")

vim.keymap.set("n", "<C-t>", ":tabnew<CR>", {})
vim.keymap.set("n", "<C-i>", "gt", {})
vim.keymap.set("n", "<A-i>", ":tabp<CR>", {})
vim.keymap.set("n", "<A-w>", ":tabc<CR>", {})
vim.keymap.set("n", "<C-k><C-w>", ":tabo<CR>", {})
