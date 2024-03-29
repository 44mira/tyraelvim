local textblocks = dofile 'C:\\Users\\Legolas\\.config\\nvim\\textblocks.lua'

return {
  {
    'christoomey/vim-tmux-navigator',
    keys = {
      { '<M-\\>', '<cmd>TmuxNavigatePrevious<cr>', desc = 'Go to the previous pane' },
      { '<M-h>', '<cmd>TmuxNavigateLeft<cr>', desc = 'Go to the left pane' },
      { '<M-j>', '<cmd>TmuxNavigateDown<cr>', desc = 'Go to the down pane' },
      { '<M-k>', '<cmd>TmuxNavigateUp<cr>', desc = 'Go to the up pane' },
      { '<M-l>', '<cmd>TmuxNavigateRight<cr>', desc = 'Go to the right pane' },
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
      require('nvim-tree').setup {
        view = {
          side = 'right',
        },
      }
    end,
  },
  {
    'MeanderingProgrammer/dashboard.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('dashboard').setup {
        header = textblocks.header(),
        directories = {
          [[~\.config\nvim]],
          [[~\Desktop\pandora\ACADEMICS\prac]],
          [[C:\Users\Legolas\AppData\Roaming\alacritty]],
        },
        footer = { textblocks.footers() },
        highlight_groups = {
          header = 'bufferLineCurrent',
          icon = 'bufferLineCurrent',
          directory = 'jsParen',
          hotkey = 'AerialOperatorIcon',
          footer = 'jsParen',
        },
      }
    end,
  },
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      vim.opt.termguicolors = true
      require('bufferline').setup {
        options = {
          separator_style = 'slope',
        },
      }

      local map = vim.keymap.set

      map('n', '[b', '<cmd>:BufferLineCyclePrev<CR>', { desc = 'Previous [B]uffer' })
      map('n', ']b', '<cmd>:BufferLineCycleNext<CR>', { desc = 'Next [B]uffer' })
      map('n', '<leader>}', '<cmd>:BufferLineMoveNext<CR>', { desc = '[}] Forward Buffer' })
      map('n', '<leader>{', '<cmd>:BufferLineMovePrev<CR>', { desc = '[{] Backward Buffer' })

      for i = 1, 9 do
        map('n', ('<M-%d>'):format(i), ('<cmd>:BufferLineGoToBuffer %d<CR>'):format(i), { desc = ('Go to Buffer [%d]'):format(i) })
      end
    end,
  },
}
