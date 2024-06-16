return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = 'markdown',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'hrsh7th/nvim-cmp',
    'nvim-telescope/telescope.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  opts = {
    workspaces = {
      {
        name = 'second-brain',
        path = '~/Documents/personal/notes/second-brain',
      },
    },

    daily_notes = {
      folder = 'dailies',
      date_format = '%Y-%m-%d',
      alias_format = '%B %-d, %Y',
      template = nil,
    },

    picker = {
      name = 'telescope.nvim',
      mappings = {
        new = '<C-x>',
        insert_link = '<C-l>',
      },
    },

    completion = {
      nvim_cmp = true,
      min_chars = 2,
    },

    mappings = {
      ['<cr>'] = {
        action = function()
          return require('obsidian').util.smart_action()
        end,
        opts = { buffer = true, expr = true },
      },
    },
  },
}
