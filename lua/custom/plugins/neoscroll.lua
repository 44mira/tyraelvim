return {
  'karb94/neoscroll.nvim',
  config = function()
    require('neoscroll').setup {
      hide_cursor = false,
      easing_function = 'quadratic',
    }

    local t = {}

    t['<C-d>'] = { 'scroll', { 'vim.wo.scroll', 'true', 100 } }
    t['<C-u>'] = { 'scroll', { '-vim.wo.scroll', 'true', 100 } }

    require('neoscroll.config').set_mappings(t)
  end,
}
