return function(use)
  use({
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup({})
    end
  },
    use { 'ray-x/go.nvim',
      config = function()
        require('go').setup()
      end
    },
    --  use 'shaunsingh/nord.nvim',
    --  use 'arcticicestudio/nord-vim',
    --  use 'Roy-Orbison/nord-vim-256',
    use "windwp/nvim-spectre",
    use { 'echasnovski/mini.cursorword', branch = 'stable',
      config = function()
        require('mini.cursorword').setup()
      end
    },
    use {
      "kylechui/nvim-surround",
      tag = "*", -- Use for stability; omit to use `main` branch for the latest features
      config = function()
        require("nvim-surround").setup({
          -- Configuration here, or leave empty to use defaults
        })
      end
    },
    use {
      'windwp/nvim-autopairs',
      config = function()
        require('nvim-autopairs').setup()
      end
    }
  )
end
