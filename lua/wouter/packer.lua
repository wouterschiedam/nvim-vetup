-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use ('christoomey/vim-tmux-navigator')
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.3',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use("ThePrimeagen/vim-be-good");
  -- use { "catppuccin/nvim", as = "catppuccin" }
  use({
  	  'rose-pine/neovim',
  	  as = 'rose-pine',
  	  config = function()
  		  vim.cmd('colorscheme rose-pine')
  	  end
  })

  use({
      "folke/trouble.nvim",
      config = function()
          require("trouble").setup {
              icons = false,
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  })
  use { 'nvim-treesitter/nvim-treesitter',
    run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
    end,}
  use("nvim-treesitter/playground")
  -- quick files
  use("theprimeagen/harpoon")
  use("theprimeagen/refactoring.nvim")
  use("mbbill/undotree")
  use("tpope/vim-fugitive")
  use("nvim-treesitter/nvim-treesitter-context");
  -- Easy life for html
  use 'mhartington/formatter.nvim'
  use("windwp/nvim-ts-autotag");
  use("mattn/emmet-vim");
  -- html/css/bootstrap suggestions
  use {"Jezda1337/nvim-html-css",
   requires = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-lua/plenary.nvim"
        },
    }
  use "sharkdp/fd"
  use "nvim-lua/plenary.nvim"
  -- comments ARE usefull
  use "terrortylor/nvim-comment"
  -- lsp for the win
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
          {'hrsh7th/cmp-cmdline'},

		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }
  use("folke/zen-mode.nvim")
  use("eandrju/cellular-automaton.nvim")
  use("laytan/cloak.nvim")
end)

