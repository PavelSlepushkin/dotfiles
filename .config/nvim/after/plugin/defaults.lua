vim.opt.relativenumber = true
--bash-like tabComplete
vim.opt.wildmode = "longest,list,full"
vim.opt.wildmenu = true

vim.opt.scrolloff = 8

-- Ctrl-s for save
vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>")
-- leader-s for search and replace current word
--vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
-- system clipboard
vim.opt.clipboard = "unnamedplus"

-- visial search and replace
vim.keymap.set('x', '<Leader>/', '<Esc>/\\%V', { desc = 'Search in visial block' })
vim.keymap.set('x', '<Leader>r', [[:s/\%V]], { desc = '[R]eplace in visual block' })

--Primagen remaps - move Visual block with JK
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- same but for cursor keys
vim.keymap.set("v", "<S-Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<S-Up>", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", "\"_dP")

--[[ open telescope find_files when vim started without paramters
vim.api.nvim_create_autocmd('VimEnter', {
  callback = function()
    if vim.fn.argc() == 0 then
      vim.cmd('Telescope find_files')
    end
  end,
})
--]]
--autocommand for save on focust lost and BufLeave
vim.api.nvim_create_autocmd({ "BufLeave", "FocusLost" }, {
  callback = function()
    if vim.bo.modified and not vim.bo.readonly and vim.fn.expand("%") ~= "" and vim.bo.buftype == "" then
      vim.api.nvim_command('silent update')
    end
  end,
})

vim.keymap.set('n', '<leader>n', function() vim.o.rnu = not vim.o.rnu end, { desc = 'Toggle relative line [N]umbers' })
