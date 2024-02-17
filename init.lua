require("vim-options")

-- const name = name;
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {}
local val = {}
require("lazy").setup("plugins")

--TODO: hello world
--TODO: hello world
--HACK: this is a hack
--NEW: is the best person
--NEW: sachin is the best
