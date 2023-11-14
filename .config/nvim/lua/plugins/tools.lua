-- additional plugins, without much config
return {
  {
    'echasnovski/mini.cursorword',
    branch = 'stable',                                --underline word under cursor
    config = function()
      require('mini.cursorword').setup()
    end
  },

  {
    "kylechui/nvim-surround", --surround -add keymaps like 'ys(' - you surround, 'cs]' - change surround to ]
    version = "*",            -- Use for stability; omit to use `main` branch for the latest features
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

  -- { 'lukas-reineke/indent-blankline.nvim', -- Add indentation guides even on blank lines
  --   config = function()
  --     -- Enable `lukas-reineke/indent-blankline.nvim`
  --     -- See `:help indent_blankline.txt`
  --     require('indent_blankline').setup {
  --       char = '┊',
  --       show_trailing_blankline_indent = false,
  --     }
  --   end
  -- },

  {
    'numToStr/Comment.nvim', -- "gc" to comment visual regions/lines
    config = function()
      require('Comment').setup()
    end
  },

  'tpope/vim-sleuth',            -- Detect tabstop and shiftwidth automatically
  -- 'tpope/vim-unimpaired', -- handy mappins for [ and ]
  {
    'tummetott/unimpaired.nvim', --same but in lua with which-key support
    config = function()
      require('unimpaired').setup {
        -- add any options here or leave empty
      }
    end
  },
  {
    'jinh0/eyeliner.nvim',
    config = function()
      require 'eyeliner'.setup {
        highlight_on_key = true, -- show highlights only after keypress
        dim = true               -- dim all other characters if set to true (recommended!)
      }
    end
  },
}
