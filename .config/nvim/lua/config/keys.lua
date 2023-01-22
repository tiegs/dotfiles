-- Custom keybindings

vim.g.mapleader = " "


-- Tabline
vim.keymap.set("n", "<A-n>", ":TablineBufferNext<CR>", { silent = true })
vim.keymap.set("n", "<A-m>", ":TablineBufferPrevious<CR>", { silent = true })

-- Navigate between splits
vim.keymap.set("n", "<A-h>", "<C-w>h<CR>")
vim.keymap.set("n", "<A-j>", "<C-w>j<CR>")
vim.keymap.set("n", "<A-k>", "<C-w>k<CR>")
vim.keymap.set("n", "<A-l>", "<C-w>l<CR>")

-- Move splits
vim.keymap.set("n", "<A-H>", "<C-w>H<CR>")
vim.keymap.set("n", "<A-J>", "<C-w>J<CR>")
vim.keymap.set("n", "<A-K>", "<C-w>K<CR>")
vim.keymap.set("n", "<A-L>", "<C-w>L<CR>")

-- Move sections in V-mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor at first position when using J (using mark 6)
vim.keymap.set("n", "J", "m6J'6")

-- Keep cursor centered when C-d/u'ing
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-------------
-- Plugins --
-------------

-- NerdTree
vim.keymap.set("n", "<leader>t", ":NERDTreeToggleVCS<CR>", { silent = true })
vim.keymap.set("n", "<leader>v", ":NERDTreeFind<CR>", { silent = true })

-- Undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle )

-- Git fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git )

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fp', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


--print("Keybindings loaded!")
