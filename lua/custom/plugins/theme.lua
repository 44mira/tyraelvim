-- You can easily change to a different colorscheme.

return {
  lazy = false,
  priority = 1000,
  config = function()
    -- vim.cmd.colorscheme 'rose-pine'
    vim.cmd.colorscheme 'tokyonight-night'
    vim.cmd.highlight 'clear SignColumn'
    vim.opt.fillchars = { eob = ' ' }
  end,

  -- 'rose-pine/neovim',
  'folke/tokyonight.nvim',
}
