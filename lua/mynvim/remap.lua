vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("t", "<C-o>", [[<C-\><C-n>:b#<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>h', ':nohlsearch<CR>', { noremap = true, silent = true })
