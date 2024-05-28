local function lualine_name()
  return [[sharmaigne  ]]
end


local copilot = {
  'copilot',
  symbols = {
    status = {
      icons = {
        enabled = ' ',
        sleep = ' ', -- auto-trigger disabled
        disabled = ' ',
        warning = ' ',
        unknown = ' ',
      },
      hl = {
        enabled = '#82CFB6',
        sleep = '#6272A4',
        disabled = '#6272A4',
        warning = '#FFB86C',
        unknown = '#FF5555',
      },
    },
  },
  show_colors = true,
}

return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons', 'AndreM222/copilot-lualine' },
  opts = {
    options = {
      section_separators = { left = '', right = '' },
      component_separators = { left = '', right = '' },
    },
    sections = {
      lualine_b = { 'branch' },
      lualine_x = { 'diff', { copilot, color = copilot_color }, 'diagnostics' },
      lualine_x = { 'diff', copilot, 'diagnostics' },
      lualine_y = { 'filetype' },
      lualine_z = { lualine_name },
    },
    extensions = {
      'lazy',
      'neo-tree',
      'oil',
    },
  },
}
