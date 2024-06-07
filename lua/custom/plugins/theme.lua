-- You can easily change to a different colorscheme.

-- Title: Themes {{{
local catppuccin = {
  'catppuccin/nvim',
  name = 'catppuccin',
  lazy = false,
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      custom_highlights = function(colors)
        return {
          CodeBlock = { bg = colors.mantle },
          Folded = { bg = colors.mantle },
        }
      end,
      integrations = {
        treesitter = true,
        mini = {
          enabled = true,
          indentscope_color = '',
        },
        indent_blankline = {
          enabled = true,
          scope_color = 'lavender', -- catppuccin color (eg. `lavender`) Default: text
          colored_indent_levels = false,
        },
        cmp = true,
        gitsigns = true,
        harpoon = true,
        aerial = true,
        mason = true,
        neotree = true,
        which_key = true,
      },
    }

    vim.cmd.colorscheme 'catppuccin'
  end,
}

local rosepine = {
  'rose-pine/neovim',
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme 'rose-pine'
  end,
}

local gruvbox_material = {
  'sainnhe/gruvbox-material',
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.gruvbox_material_enable_italic = true
    vim.g.gruvbox_material_enable_bold = true
    vim.cmd.colorscheme 'gruvbox-material'
  end,
}

local tokyonight = {
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme 'tokyonight'
  end,
}
-- }}}

return {
  -- catppuccin,
  tokyonight,
  -- rosepine,
  -- gruvbox_material,
}
