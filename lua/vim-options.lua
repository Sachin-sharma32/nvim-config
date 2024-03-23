vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.wo.number = true
vim.wo.relativenumber = true
vim.g.mapleader = " "
vim.keymap.set("i", "jj", "<Esc>", {})

-- neo tree
vim.keymap.set("n", "<leader>n", ":Neotree toggle<CR>")
vim.keymap.set("n", "<leader>a", ":Neotree focus<CR>")

vim.keymap.set("n", "<A-h>", ":lua find_and_replace_prompt()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-u>", "<cmd>lua case_insensitive_search()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "20zl", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>m", ":MinimapToggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-A-a>", ":CopilotChatToggle<CR>", {})
vim.keymap.set("n", "<C-s>", ":w<CR>")
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
vim.keymap.set("n", "<leader>;", ":cn<CR>", {})
vim.keymap.set("n", "<leader>l", ":cp<CR>", {})
vim.keymap.set("n", "<leader>d", "<C-]>", {})
vim.keymap.set("n", "E", "$", {})
vim.keymap.set("n", "B", "^", {})
vim.keymap.set("n", "tk", ":blast<CR>", { noremap = false })
vim.keymap.set("n", "tj", ":bfirst<CR>", { noremap = false })
vim.keymap.set("n", "th", ":bprev<CR>", { noremap = false })
vim.keymap.set("n", "tl", ":bnext<CR>", { noremap = false })
vim.keymap.set("n", "td", ":bdelete<CR>", { noremap = false })
vim.keymap.set("n", "vs", ":vsp<CR>", { noremap = false })
vim.keymap.set("n", "hs", ":sp<CR>", { noremap = false })
vim.keymap.set("n", "TT", ":TransparentToggle<CR>", { noremap = true })
vim.keymap.set("n", "sz", ":TodoTelescope<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "ss", ":noh<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "QQ", ":q!<CR>", { noremap = false })
vim.api.nvim_set_keymap("n", "WW", ":w!<CR>", { noremap = false })
vim.api.nvim_set_keymap("n", "WQ", ":wq<CR>", { noremap = false })
vim.keymap.set("n", "SC", ":source %<CR>", {})

-- Enable auto-indentation
vim.cmd("filetype plugin indent on")
vim.o.smartindent = true
vim.o.autoindent = true

function find_and_replace_prompt()
  local old_text = vim.fn.input("Old text: ")
  local new_text = vim.fn.input("New text: ")
  vim.api.nvim_command("%s/" .. vim.fn.escape(old_text, "/") .. "/" .. vim.fn.escape(new_text, "/") .. "/gc")
end

-- Search for text in a case-insensitive manner
function case_insensitive_search()
  local user_input = vim.fn.input("Search: ")
  vim.cmd("nohlsearch")              -- Clear the previous search highlighting
  vim.cmd("/" .. user_input .. "\\c") -- Perform case-insensitive search
end

-- Enable autoformatting on Enter for HTML
vim.api.nvim_exec(
  [[
    autocmd FileType html inoremap <buffer> <CR> <CR><Esc>O
]],
  false
)

-- For SmoothCursor plugin
local autocmd = vim.api.nvim_create_autocmd
autocmd({ "ModeChanged" }, {
  callback = function()
    local current_mode = vim.fn.mode()
    if current_mode == "n" then
      vim.api.nvim_set_hl(0, "SmoothCursor", { fg = "#8aa872" })
      vim.fn.sign_define("smoothcursor", { text = "" })
    elseif current_mode == "v" then
      vim.api.nvim_set_hl(0, "SmoothCursor", { fg = "#bf616a" })
      vim.fn.sign_define("smoothcursor", { text = "" })
    elseif current_mode == "V" then
      vim.api.nvim_set_hl(0, "SmoothCursor", { fg = "#bf616a" })
      vim.fn.sign_define("smoothcursor", { text = "" })
    elseif current_mode == "�" then
      vim.api.nvim_set_hl(0, "SmoothCursor", { fg = "#bf616a" })
      vim.fn.sign_define("smoothcursor", { text = "" })
    elseif current_mode == "i" then
      vim.api.nvim_set_hl(0, "SmoothCursor", { fg = "#668aab" })
      vim.fn.sign_define("smoothcursor", { text = "" })
    end
  end,
})

-- automatically run :SmoothCursorFancyToggle when vim starts
vim.cmd("autocmd VimEnter * SmoothCursorFancyToggle")

-- NOT REQUIRED
vim.keymap.set("n", "es", ":2wincmd w<CR>", {})
vim.keymap.set("n", "ef", ":1wincmd w<CR>", {})
vim.keymap.set("n", "et", ":3wincmd w<CR>", {})
