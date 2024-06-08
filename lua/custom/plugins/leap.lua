return {
  'ggandor/leap.nvim',
  dependencies = {
    'tpope/vim-repeat',
  },
  config = function()
    local leap = require 'leap'
    local bind = vim.keymap.set

    bind({ 'n', 'x', 'o' }, 'r', '<Plug>(leap-forward)')
    bind({ 'n', 'x', 'o' }, 'R', '<Plug>(leap-backward)')
    bind({ 'n', 'x', 'o' }, 'gr', '<Plug>(leap-from-window)')

    leap.setup {}
  end,
}
