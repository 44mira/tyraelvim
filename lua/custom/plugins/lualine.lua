local function lualine_name()
  return [[sharmaigne  ]]
end

local aerial = {
  'aerial',
  -- The separator to be used to separate symbols in status line.
  sep = ' ) ',

  -- The number of symbols to render top-down. In order to render only 'N' last
  -- symbols, negative numbers may be supplied. For instance, 'depth = -1' can
  -- be used in order to render only current symbol.
  depth = nil,

  -- When 'dense' mode is on, icons are not rendered near their symbols. Only
  -- a single icon that represents the kind of current symbol is rendered at
  -- the beginning of status line.
  dense = true,

  -- The separator to be used to separate symbols in dense mode.
  dense_sep = ' ) ',

  -- Color the symbol icons.
  colored = true,
}

local copilot = {
  'copilot',
  symbols = {
    status = {
      icons = {
        sleep = ' ', -- BUG: auto-trigger disabled
        enabled = ' ', -- BUG: auto-trigger disabled
        disabled = ' ',
        warning = ' ',
        unknown = ' ',
      },
      hl = {
        sleep = '#82CFB6', -- BUG: auto-trigger disabled
        enabled = '#6272A4', -- BUG: auto-trigger disabled
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
      component_separators = { left = ')', right = '(' },
    },
    sections = {
      lualine_b = { 'branch' },
      lualine_c = { 'filename', aerial },
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
