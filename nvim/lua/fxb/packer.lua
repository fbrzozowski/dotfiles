-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'navarasu/onedark.nvim'
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'theprimeagen/harpoon'

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},     -- Required
		  {'hrsh7th/cmp-nvim-lsp'}, -- Required
		  {'L3MON4D3/LuaSnip'},     -- Required
	  }
  }
  use "folke/todo-comments.nvim"
  use {
      "folke/trouble.nvim",
      require = {
          { "nvim-web-devicons" }
      }
  }
  use 'nvim-tree/nvim-web-devicons'
  use 'lewis6991/gitsigns.nvim'
  use 'freddiehaddad/feline.nvim'
  use 'nvim-tree/nvim-tree.lua'

  use {
      "NeogitOrg/neogit",
      require = {
          "nvim-lua/plenary.nvim",         -- required
          "nvim-telescope/telescope.nvim", -- optional
          "sindrets/diffview.nvim",        -- optional
          "ibhagwan/fzf-lua",              -- optional
      }
  }

 use 'christoomey/vim-tmux-navigator'
 use 'preservim/nerdcommenter'
 use 'mfussenegger/nvim-lint'

end)
