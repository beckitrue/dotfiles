vim.opt.virtualedit = "block"
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Set Color Scheme
vim.cmd.colorscheme('catppuccin')

-- Concealer for NeoNorg
vim.o.conceallevel=2
vim.o.foldlevel = 99

-- Basic Keymaps
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Set Python3 Environment
vim.g.python3_host_prog = "/usr/bin/python3"
