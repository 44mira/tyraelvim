local function lualine_name()
  return [[sharmaigne 󰋑 ]]
end

return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      section_separators = { left = '', right = '' },
      component_separators = { left = '', right = '' },
    },
    sections = {
      lualine_b = { 'branch' },
      lualine_x = { 'diff', 'diagnostics', 'filetype' },
      lualine_z = { lualine_name },
    },
    extensions = {
      'lazy',
      'neo-tree',
      'oil',
    },
  },
}
