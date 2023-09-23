-- DAP configuration
-- See: https://www.lazyvim.org/extras/dap/core
return {
  {
    "mfussenegger/nvim-dap",

    -- stylua: ignore
    keys = {
      { "<F7>", function() require("dap").step_into() end, desc = "Step Into" },
      { "<F8>", function() require("dap").step_over() end, desc = "Step Over" },
      { "<F9>", function() require("dap").continue() end, desc = "Continue" },
    },
  },

  -- { "rcarriga/nvim-dap-ui" },
  --
  -- { "theHamsta/nvim-dap-virtual-text" },
  --
  -- {
  --   "folke/which-key.nvim",
  --   opts = {
  --     defaults = {
  --       ["<leader>d"] = { name = "+debug" },
  --       ["<leader>da"] = { name = "+adapters" },
  --     },
  --   },
  -- },
  --
  -- {
  --   "jay-babu/mason-nvim-dap.nvim",
  --   opts = {
  --     -- Makes a best effort to setup the various debuggers with
  --     -- reasonable debug configurations
  --     automatic_installation = true,
  --
  --     -- You can provide additional configuration to the handlers,
  --     -- see mason-nvim-dap README for more information
  --     handlers = {},
  --
  --     -- You'll need to check that you have the required things installed
  --     -- online, please don't ask me how to install them :)
  --     ensure_installed = {
  --       -- Update this to ensure that you have the debuggers for the langs you want
  --     },
  --   },
  -- },
}
