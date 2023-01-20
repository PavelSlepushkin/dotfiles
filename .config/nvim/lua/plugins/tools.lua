-- additional plugins, without much config
return {
  { 'echasnovski/mini.cursorword', branch = 'stable', --underline word under cursor
    config = function()
      require('mini.cursorword').setup()
    end
  },
  {
    "kylechui/nvim-surround", --surround -add keymaps like 'ys(' - you surround, 'cs]' - change surround to ]
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
  {
    'windwp/nvim-autopairs', --autopairs (used to them in VS code)
    config = function()
      require('nvim-autopairs').setup()
    end
  },

  'lukas-reineke/indent-blankline.nvim', -- Add indentation guides even on blank lines
  'numToStr/Comment.nvim', -- "gc" to comment visual regions/lines
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
}
