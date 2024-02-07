return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    -- autoformat = false,  # deprecated
    servers = {
      -- pyright = false,

      -- pylsp = {
      --   settings = {
      --     pylsp = {
      --       plugins = {
      --         pycodestyle = {
      --           -- ignore = {'E501'},
      --           maxLineLength = 120,
      --         }
      --       }
      --     }
      --   }
      -- },

      -- ruff_lsp = false,
      -- ruff_lsp = {
      --   init_options = {
      --     settings = {
      --       args = {" --ignore E501 "}
      --     }
      --   }
      -- }
    },
  },
}
