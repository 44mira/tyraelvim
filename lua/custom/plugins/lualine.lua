local function lualine_name()
  return [[sharmaigne  ]]
end

local function copilot()
  if (vim.b.copilot_enabled or 1) == 1 then
    return ' '
  end
  return ' '
end

local function copilot_color()
  if (vim.b.copilot_enabled or 1) == 1 then
    return { fg = '#993a55' }
  end
  return { fg = '#82cfb6' }
end

return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons', 'github/copilot.vim' },
  opts = {
    options = {
      section_separators = { left = '', right = '' },
      component_separators = { left = '', right = '' },
    },
    sections = {
      lualine_b = { 'branch' },
      lualine_x = { 'diff', { copilot, color = copilot_color }, 'diagnostics' },
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
