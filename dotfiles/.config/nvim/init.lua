local set = vim.opt
set.expandtab = true
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

require('Comment').setup()
