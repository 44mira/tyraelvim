return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    sections = {
      lualine_b = { 'branch' },
      lualine_x = { 'diff', 'diagnostics', 'filetype' },
    },
    -- tabline = {
    --   lualine_a = {
    --     {
    --       'buffers',
    --       mode = 2,
    --     },
    --   },
    --   lualine_z = { 'tabs' },
    -- },
    extensions = {
      'nvim-tree',
      'oil',
    },
  },
}
