return {

  -- Additional NeoTree binding for reveal_file
  {
    "nvim-neo-tree/neo-tree.nvim",
    -- No function, as 'reveal' is active anyways
    -- keys = {
    --   {
    --     "<leader>fv",
    --     function()
    --       require("neo-tree.command").execute({ toggle = true, reveal = true })
    --     end,
    --     desc = "Reveal current file in NeoTree",
    --   },
    --   { "<leader>v", "<leader>fv", desc = "Reveal current file in NeoTree", remap = true },
    -- },
    opts = {
      close_if_last_window = true,
      filesystem = {
        filtered_items = {
          visible = true,
        },
      },
    },
  },
}
