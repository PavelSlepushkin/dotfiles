return {
  { 'ray-x/go.nvim',
    config = function()
      require('go').setup()
      --ray-x.go plugin format
      local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = "*.go",
        callback = function()
          require('go.format').goimport()
        end,
        group = format_sync_grp,
      })
      vim.keymap.set('n', '<Leader>g', ':GoAddTest<CR>', { desc = '[G]o add test' })
    end
  },
}
