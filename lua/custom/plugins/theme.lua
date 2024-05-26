-- You can easily change to a different colorscheme.

return {
  {
    -- 'folke/tokyonight.nvim',
    -- 'sainnhe/gruvbox-material',
    'rose-pine/neovim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_enable_bold = true

      vim.cmd.colorscheme 'rose-pine'

      vim.opt.fillchars = { eob = ' ' }
    end,
  },
}
