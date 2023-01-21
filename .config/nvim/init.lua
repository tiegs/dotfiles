require('plugins')
require('keybindings')

------------
-- Themes --
------------

vim.opt.termguicolors = true

-- Catppuccin setup
require("catppuccin").setup({
  flavour = "mocha",
  --transparent_background = true,
})

-- Lualine setup
require('lualine').setup({
})

-- Tabline setup
require('tabline').setup({
  enable = true,
  options = {
    component_separators = { '', '' },
    section_separators = { '', '' },
    max_bufferline_percent = 66,
    show_tabs_always = true,
    show_devicons = true,
    colored = true,
    tabline_show_last_separator = true,
    show_filename_only = true,
    --modified_icon = "+ ",
    --modified_italic = true,
    show_tabs_only = false,
  }
})

require('colorizer').setup()


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
-- vim.opt.colorcolumn = "80"

-- Show matching parenthesis
vim.opt.showmatch = true

-- Search non-case-sesitive, execpt when searchterm is upper-case
vim.opt.ignorecase = true
vim.opt.smartcase = true

------------------------
-- Basic editor setup --
------------------------

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

-- Open new splits right and below the current split
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Disable mouse support (enables default selection behaviour)
vim.opt.mouse=""

-- Use space as leader key
vim.g.mapleader = " "
