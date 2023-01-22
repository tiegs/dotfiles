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

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},         -- Required
      {'hrsh7th/cmp-nvim-lsp'},     -- Required
      {'hrsh7th/cmp-buffer'},       -- Optional
      {'hrsh7th/cmp-path'},         -- Optional
      {'saadparwaiz1/cmp_luasnip'}, -- Optional
      {'hrsh7th/cmp-nvim-lua'},     -- Optional

      -- Snippets
      {'L3MON4D3/LuaSnip'},             -- Required
      {'rafamadriz/friendly-snippets'}, -- Optional
    }
  }

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
