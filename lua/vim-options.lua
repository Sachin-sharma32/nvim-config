vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.wo.number = true
vim.wo.relativenumber = true
vim.g.mapleader = " "
vim.keymap.set("i", "jj", "<Esc>", {})
--vim.cmd("autocmd VimEnter * :ToggleTerm")

vim.keymap.set("n", "<C-t>", ":tabnew<CR>", {})
vim.keymap.set("n", "<C-i>", "gt", {})
vim.keymap.set("n", "<A-i>", ":tabp<CR>", {})
vim.keymap.set("n", "<A-w>", ":tabc<CR>", {})
vim.keymap.set("n", "<C-k><C-w>", ":tabo<CR>", {})
vim.keymap.set("n", "<C-w>", ":buffer ", {})
vim.keymap.set("n", "<C-c>", '"+y<CR>', {})
vim.keymap.set("n", "<C-v>", '"+p<CR>', {})
vim.keymap.set("n", "<A-z>", ":set nowrap<CR>", {})
vim.keymap.set("n", "<A-x>", ":set wrap<CR>", {})
vim.keymap.set("n", "<C-f>", "/", {})
vim.keymap.set("n", "<leader>;", ":cn<CR>", {})
vim.keymap.set("n", "<leader>l", ":cp<CR>", {})
vim.keymap.set("n", "es", ":2wincmd w<CR>", {})
vim.keymap.set("n", "ef", ":1wincmd w<CR>", {})
vim.keymap.set("n", "et", ":3wincmd w<CR>", {})
vim.keymap.set("n", "<leader>d", "<C-]>", {})
vim.keymap.set("n", "E", "$", {})
vim.keymap.set("n", "B", "^", {})
vim.keymap.set("n", "tk", ":blast<CR>", { noremap = false })
vim.keymap.set("n", "tj", ":bfirst<CR>", { noremap = false })
vim.keymap.set("n", "th", ":bprev<CR>", { noremap = false })
vim.keymap.set("n", "MM", ":MinimapToggle<CR>", { noremap = false })
vim.keymap.set("n", "tl", ":bnext<CR>", { noremap = false })
vim.keymap.set("n", "td", ":bdelete<CR>", { noremap = false })
vim.keymap.set("n", "vs", ":vsp<CR>", { noremap = false })
vim.keymap.set("n", "hs", ":sp<CR>", { noremap = false })
vim.keymap.set("n", "TT", ":TransparentToggle<CR>", { noremap = true })
vim.keymap.set("n", "st", ":TodoTelescope<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "ss", ":noh<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "QQ", ":q!<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "WW", ":w!<enter>", { noremap = false })
vim.keymap.set("n", "<Leader>sn", "<CMD>lua require('telescope').extensions.notify.notify()<CR>", silent)
vim.keymap.set("n", "SC", ":source<CR>", {})
-- Enable auto-indentation
vim.cmd("filetype plugin indent on")
vim.o.smartindent = true
vim.o.autoindent = true

function find_and_replace_prompt()
  local old_text = vim.fn.input("Old text: ")
  local new_text = vim.fn.input("New text: ")
  vim.api.nvim_command("%s/" .. vim.fn.escape(old_text, "/") .. "/" .. vim.fn.escape(new_text, "/") .. "/g")
end

vim.keymap.set("n", "<C-h>", ":lua find_and_replace_prompt()<CR>", { noremap = true, silent = true })

function case_insensitive_search()
  local user_input = vim.fn.input("Search: ")
  vim.cmd("nohlsearch")              -- Clear the previous search highlighting
  vim.cmd("/" .. user_input .. "\\c") -- Perform case-insensitive search
end

vim.keymap.set("n", "<C-u>", "<cmd>lua case_insensitive_search()<CR>", { noremap = true, silent = true })

local namecg = "namecg"
local Sachin = "namecg"

-- Enable autoformatting on Enter for HTML
vim.api.nvim_exec(
  [[
    autocmd FileType html inoremap <buffer> <CR> <CR><Esc>O
]],
  false
)
