-- Thisvfile can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup({function(use)
  use 'wbthomason/packer.nvim'
  use 'christoomey/vim-tmux-navigator'
  use 'preservim/nerdcommenter'
  use 'mfussenegger/nvim-lint'
  use 'theprimeagen/harpoon'
  use 'nvim-tree/nvim-web-devicons'
  use { 'nvim-treesitter/nvim-treesitter', build = ":TSUpdate", config = require("setup/treesitter") }
  use { 'stevearc/conform.nvim', config = require("setup/conform") } 
  use {'j-hui/fidget.nvim', config = require("setup/fidget") }
--  use 'rlane/pounce.nvim' TODO: Checkout 

  use { 'folke/todo-comments.nvim', config = require("setup/todo-comments") }
  use { 'folke/which-key.nvim', config = require("setup/which-key") }
  use { 'freddiehaddad/feline.nvim', config = require("setup/feline") }
  use { 'nvim-tree/nvim-tree.lua', config = require("setup/nvim-tree") }
  use { 'navarasu/onedark.nvim', config = require("setup/onedark") }
  use { 'lewis6991/gitsigns.nvim' } --, config = require("setup/gitsigns") }

  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v4.x',
      requires = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},             -- Required
          {'williamboman/mason.nvim'},           -- Optional
          {'williamboman/mason-lspconfig.nvim'}, -- Optional

          -- Autocompletion
          {'hrsh7th/nvim-cmp'},     -- Required
          {'hrsh7th/cmp-nvim-lsp'}, -- Required
          {'L3MON4D3/LuaSnip'},     -- Required
      },
      config = require("setup/lsp")
  }

  use { 'linrongbin16/lsp-progress.nvim', config = function()
    require('lsp-progress').setup()
  end }

end})
