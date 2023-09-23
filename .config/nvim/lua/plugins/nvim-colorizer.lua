-- Color highlights
-- https://github.com/norcalli/nvim-colorizer.lua
return {
  {
    "norcalli/nvim-colorizer.lua",
    config = function (_, opts)
      require("colorizer").setup()
    end,
    opts = {},
  },
}
