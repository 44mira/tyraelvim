-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'christoomey/vim-tmux-navigator',
    keys = {
      { '<C-\\>', '<cmd>TmuxNavigatePrevious<cr>', desc = 'Go to the previous pane' },
      { '<C-h>', '<cmd>TmuxNavigateLeft<cr>', desc = 'Go to the left pane' },
      { '<C-j>', '<cmd>TmuxNavigateDown<cr>', desc = 'Go to the down pane' },
      { '<C-k>', '<cmd>TmuxNavigateUp<cr>', desc = 'Go to the up pane' },
      { '<C-l>', '<cmd>TmuxNavigateRight<cr>', desc = 'Go to the right pane' },
    },
  },
  { 'm4xshen/autoclose.nvim', opts = {} },
  { 'windwp/nvim-ts-autotag', opts = {} },
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('nvim-tree').setup {}
    end,
  },
}
