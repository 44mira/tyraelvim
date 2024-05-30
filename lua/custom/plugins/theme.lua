-- You can easily change to a different colorscheme.

local catppuccin = {
  'catppuccin/nvim',
  name = 'catppuccin',
  lazy = false,
  priority = 1000,
  config = function()
    require('catppuccin').setup {
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
        headlines = true,
        aerial = true,
        mason = true,
        neotree = true,
        which_key = true,
      },
    }

    vim.cmd.colorscheme 'catppuccin'
    vim.opt.fillchars = { eob = ' ' }
  end,
}

local rosepine = {
  'rose-pine/neovim',
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme 'rosepine'
    vim.opt.fillchars = { eob = ' ' }
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
    vim.opt.fillchars = { eob = ' ' }
  end,
}

local tokyonight = {
  'folke/tokyonight.nvim',
}

return {
  catppuccin,
  -- tokyonight,
  -- rosepine,
  -- gruvbox_material,
}
