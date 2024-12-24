return {
  'vim-test/vim-test',
  config = function()
    -- Set the strategy for vim-test to use vimux
    vim.cmd [[ let test#strategy = "vimux" ]]

    -- Add keybindings for vim-test commands
    vim.api.nvim_set_keymap('n', '<leader>t', ':TestNearest<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>T', ':TestFile<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>a', ':TestSuite<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>l', ':TestLast<CR>', { noremap = true, silent = true })
  end,

  -- Include Vimux plugin
  'benmills/vimux'
}
