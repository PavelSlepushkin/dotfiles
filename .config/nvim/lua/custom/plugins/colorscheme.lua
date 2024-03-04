return {
  -- 'navarasu/onedark.nvim', -- Theme inspired by Atom
  -- 'Mofiqul/dracula.nvim', --Dracula in lua
  -- 'sainnhe/gruvbox-material', --gruvbox
  -- "EdenEast/nightfox.nvim",
  {
    'sainnhe/everforest',
    lazy = false,
    priority = 1000,
    config = function()
      vim.opt.termguicolors = true
      vim.cmd.colorscheme 'everforest'
    end,
  },
  -- { 'catppuccin/nvim', name = 'catppuccin' },
}
