-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -----------
  -- Theme --
  -----------

  -- Catppuccin Theme
  use { "catppuccin/nvim", as = "catppuccin" }

  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      { 'nvim-tree/nvim-web-devicons' },
      { 'kdheepak/tabline.nvim' },
    }
  }

  -- Tabline
  use {
    'kdheepak/tabline.nvim',
    requires = {
      { 'nvim-tree/nvim-web-devicons' },
    }
  }


  -------------------
  -- Functionality --
  -------------------
  use { 
    'preservim/nerdtree',
    requires = {
      { 'Xuyuanp/nerdtree-git-plugin' },
      { 'ryanoasis/vim-devicons' },
    }
  }

  use { 'preservim/nerdcommenter' }


  -----------
  -- Utils --
  -----------
 
  -- Automatically insert end-keywords
  use { "tpope/vim-endwise" }

  -- Autoclose brackets
  use { "rstacruz/vim-closer" }

  -- Neovim icons
  use { 'nvim-tree/nvim-web-devicons' }

end)
