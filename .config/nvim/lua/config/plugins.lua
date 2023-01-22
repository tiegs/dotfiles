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
      { 'nvim-tree/nvim-web-devicons', opt = true },
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

  -- Colorcodes are highlighted accordingly
  use { 'norcalli/nvim-colorizer.lua' }

  -- Better undo
  use('mbbill/undotree')

  -- Better syntax highlighting
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

  ---------------
  -- Languages --
  ---------------

  -- Terraform
  --use { 'hashivim/vim-terraform', ft = {'tf'}}
  use { 'hashivim/vim-terraform' }


  -----------
  -- Utils --
  -----------
 
  -- Automatically insert end-keywords
  use { "tpope/vim-endwise" }

  -- Autoclose brackets
  use { "rstacruz/vim-closer" }

  -- Highlight other occurences of word under cursor
  use { 'RRethy/vim-illuminate' }

  -- THE vim git plugin
  use { 'tpope/vim-fugitive' }

  -- Git sign column
  use { 'airblade/vim-gitgutter' }

  -- ysaw :)
  use { 'tpope/vim-surround' }

  -- Neovim devicons
  use { 'nvim-tree/nvim-web-devicons' }

end)
