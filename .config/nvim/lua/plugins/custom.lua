return {
	{
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup({})
		end
	},
	{ 'ray-x/go.nvim',
		config = function()
			require('go').setup()
		end
	},
	"windwp/nvim-spectre",
	{ 'echasnovski/mini.cursorword', branch = 'stable',
		config = function()
			require('mini.cursorword').setup()
		end
	},
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end
	},
	{
		'windwp/nvim-autopairs',
		config = function()
			require('nvim-autopairs').setup()
		end
	}
}

