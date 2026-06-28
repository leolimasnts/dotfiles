-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.colorcolumn = "81,121"
vim.cmd([[highlight ColorColumn ctermbg=lightgrey guibg=lightgrey]])

vim.opt.listchars = {
  tab = "» ",
  trail = "·",
  nbsp = "␣",
  extends = "…",
}

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.opt.spell = true
vim.opt.spelllang = { "en", "pt_br" }
vim.opt.spellfile = vim.fn.stdpath("config") .. "/spell/custom.utf-8.add"
