return {
  'stevearc/aerial.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('aerial').setup {
      backends = { 'treesitter', 'lsp', 'markdown' },
      layout = {
        min_width = { 40, 0.2 },
      },
      show_guides = true,
      manage_folds = true,
    }
    -- You probably also want to set a keymap to toggle aerial
    vim.keymap.set('n', '<leader>a', '<cmd>AerialToggle<CR>')
  end,
}
