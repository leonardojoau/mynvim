return {
  {
    'vim-test/vim-test',
    dependencies = { 'benmills/vimux' },
    config = function()
      vim.cmd [[ let test#strategy = "vimux" ]]

      vim.api.nvim_set_keymap('n', '<leader>t', ':TestNearest<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>T', ':TestFile<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>a', ':TestSuite<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>l', ':TestLast<CR>', { noremap = true, silent = true })
    end,
  },
  'benmills/vimux',
}
