--- Config for https://github.com/christoomey/vim-tmux-navigator

return {
  {
    "christoomey/vim-tmux-navigator",
    keys = function()
      return {
        { "<c-h>", "<C-U>TmuxNavigateLeft<cr>", "Go to left window (tmux-enabled)" },
        { "<c-j>", "<C-U>TmuxNavigateDown<cr>", "Go to lower window (tmux-enabled)" },
        { "<c-k>", "<C-U>TmuxNavigateUp<cr>", "Go to upper window (tmux-enabled)" },
        { "<c-l>", "<C-U>TmuxNavigateRight<cr>", "Go to right window (tmux-enabled)" },
      }
    end,
  },
}
