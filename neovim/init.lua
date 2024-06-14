-- ~/.config/nvim/init.vim

local o = vim.o

o.colorcolumn = "100"
o.signcolumn = "number"
o.expandtab = true
o.smartindent = true
o.tabstop = 2
o.shiftwidth = 2

o.relativenumber = true
o.number = true

vim.g.netrw_bufsettings = "noma nomod nu nowrap ro nobl"
vim.g.mapleader = " "

require("jesperseverinsen")
