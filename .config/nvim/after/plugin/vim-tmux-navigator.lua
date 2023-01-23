-- tmux-integration configuration

vim.g.tmux_navigator_no_mappings = 1

vim.keymap.set("", "<A-h>", ":<C-U>TmuxNavigateLeft<cr>", { silent = true, noremap = true })
vim.keymap.set("", "<A-j>", ":<C-U>TmuxNavigateDown<cr>", { silent = true, noremap = true })
vim.keymap.set("", "<A-k>", ":<C-U>TmuxNavigateUp<cr>", { silent = true, noremap = true })
vim.keymap.set("", "<A-l>", ":<C-U>TmuxNavigateRight<cr>", { silent = true, noremap = true })
vim.keymap.set("", "<A-/>", ":<C-U>TmuxNavigatePrevious<cr>", { silent = true, noremap = true })

--print("tmux-integration configured!")
