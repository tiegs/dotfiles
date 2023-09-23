-- Custom settings

------------
-- Themes --
------------

vim.opt.termguicolors = true

-- Disable mode display - lualine does this
vim.opt.showmode = false

-- Force signcolumn for gitgutter
vim.opt.signcolumn = "yes"

----------------------
-- Functional setup --
----------------------

-- Enable cursorline
vim.opt.cursorline = true
-- vim.opt.cursorcolumn = true
-- vim.opt.colorcolumn = "80"

-- Show matching parenthesis
vim.opt.showmatch = true

-- Search non-case-sesitive, execpt when searchterm is upper-case
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Make gitgutter responsive
vim.opt.updatetime = 100
vim.opt.swapfile = false  -- Disable swapfile - will be written each update else

-- Persistent undo - especially useful for undotree
vim.opt.undofile = true

------------------------
-- Basic editor setup --
------------------------

vim.opt.list = true
vim.opt.listchars = { tab = ' ', trail = '·' }


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

-- Disable automatic linewrap
vim.opt.wrap = false

-- Open new splits right and below the current split
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Disable mouse support (enables default selection behaviour)
vim.opt.mouse=""

-- Use space as leader key
--vim.g.mapleader = " "

--print("Custom settings loaded!")
