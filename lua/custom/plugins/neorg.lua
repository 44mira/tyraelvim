-- note taking

return {
  'nvim-neorg/neorg',
  dependencies = { 'luarocks.nvim' },
  lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
  version = '*', -- Pin Neorg to the latest stable release
  config = function()
    require('neorg').setup {
      load = {
        ['core.defaults'] = {
          config = {
            disable = {
              'core.esupports.indent',
            },
          },
        },
        ['core.syntax'] = {},
        ['core.keybinds'] = {
          config = {
            neorg_leader = '<LocalLeader>',
            hook = function(keybinds)
              -- Presenter binds
              keybinds.unmap('presenter', 'n', 'h')
              keybinds.unmap('presenter', 'n', 'l')
              keybinds.remap_event('presenter', 'n', '<leader>]', 'core.presenter.next_page')
              keybinds.remap_event('presenter', 'n', '<leader>[', 'core.presenter.previous_page')
              keybinds.remap_event('norg', 'n', '<leader>e', 'core.looking-glass.magnify-code-block')
              keybinds.remap_event('norg', 'n', '<C-CR>', 'core.itero.next-iteration')
              keybinds.map('presenter', 'n', '<CR>', 'zo')
            end,
          },
        },
        ['core.tangle'] = {},
        ['core.export'] = {},
        ['core.concealer'] = {
          config = {
            folds = false,
          },
        },
        ['core.esupports.metagen'] = {
          config = {
            type = 'empty',
          },
        },
        ['core.presenter'] = {
          config = {
            zen_mode = 'zen-mode',
          },
        },
        ['core.completion'] = {
          config = {
            engine = 'nvim-cmp',
            name = '[Neorg]',
          },
        },
        ['core.dirman'] = {
          config = {
            workspaces = {
              main = '~/notes',
            },
            default_workspace = 'main',
            index = 'index.norg',
          },
        },
      },
    }
  end,
}
