return {
  'numToStr/Comment.nvim',
  config = function()
    require('Comment').setup({
      -- Optional configurations
      toggler = {
        line = '<leader>cl', -- Keybinding for toggling line comments
        block = '<leader>cb', -- Keybinding for toggling block comments
      },
      opleader = {
        line = '<leader>cl', -- Keybinding for operator-pending line comments
        block = '<leader>cb', -- Keybinding for operator-pending block comments
      },
    })
  end
}
