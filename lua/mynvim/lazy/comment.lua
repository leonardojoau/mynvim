return {
  'numToStr/Comment.nvim',
  config = function()
    require('Comment').setup({
      toggler = {
        line = '<leader>cl',
        block = '<leader>cb',
      },
      opleader = {
        line = '<leader>cl',
        block = '<leader>cb',
      },
    })
  end
}
