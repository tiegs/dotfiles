require('plugins')
require('keybindings')

------------
-- Themes --
------------

-- Catppuccin setup
require("catppuccin").setup({
  flavour = "mocha",
  -- transparent_background = true,
})

-- Lualine setup
require('lualine').setup()

-- Tabline setup
require('tabline').setup()


vim.cmd.colorscheme "catppuccin"

-- Disable duplicate mode display
vim.opt.showmode = false

-- Force signcolumn
vim.opt.signcolumn = "yes"

----------------------
-- Functional setup --
----------------------

-- Automatically close NERDTree on file open
vim.g.NERDTreeQuitOnOpen = 1

-- Enable cursorline
vim.opt.cursorline = true
-- vim.opt.cursorcolumn = true

-- Show matching parenthesis
vim.opt.showmatch = true

-- Search non-case-sesitive, execpt when searchterm is upper-case
vim.opt.ignorecase = true
vim.opt.smartcase = true

------------------------
-- Basic editor setup --
------------------------

-- Hybrid line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Default tab = 2 spaces
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Keep some distance to top/bottom
vim.opt.scrolloff = 5

-- Enable autoindent
vim.opt.smartindent = true

-- Open new splits right and below the current split
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Disable mouse support (enables default selection behaviour)
vim.opt.mouse=""

-- Use space as leader key
vim.g.mapleader = " "
