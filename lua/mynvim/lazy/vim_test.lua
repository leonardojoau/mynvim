return {
  'vim-test/vim-test',
  config = function()
    -- Set the strategy for vim-test
    vim.cmd [[ let test#strategy = "vimux" ]]

    -- Keybindings for running tests
    vim.keymap.set('n', '<leader>t', ':TestNearest<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>T', ':TestFile<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>a', ':TestSuite<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>l', ':TestLast<CR>', { noremap = true, silent = true })
  end
}

