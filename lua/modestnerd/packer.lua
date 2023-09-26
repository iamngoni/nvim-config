-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.3',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Catppuccin Color Scheme
  	use({
		'catppuccin/nvim',
		as = 'catppuccin',
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				term_colors = false,
				transparent_background = false,
				color_overrides = {
					mocha = {
						base = "#000000",
				  		mantle = "#000000",
						crust = "#000000",
					},
				},
				integrations = {
					telescope = {
						enabled = true,
						style = "nvchad",
					},
					dropbar = {
						enabled = true,
						color_mode = true,
					},
				},
			})

			vim.cmd('colorscheme catppuccin')
		end
	})

	-- Treesitter
	use({
		'nvim-treesitter/nvim-treesitter',
		{
			run = ':TSUpdate'
		}
	})

	-- Playground
	use({'nvim-treesitter/playground'})

	-- Harpoon
	use({'ThePrimeagen/harpoon'})

	-- Undo Tree
	use({'mbbill/undotree'})

	-- Vim Fugitive
	use({'tpope/vim-fugitive'})

	-- LSP-Zero
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},
			{'neovim/nvim-lspconfig'},
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lua'},
            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
		}
	}
    use("folke/zen-mode.nvim")
    use("github/copilot.vim")
    use("eandrju/cellular-automaton.nvim")
    use("laytan/cloak.nvim")
end)
