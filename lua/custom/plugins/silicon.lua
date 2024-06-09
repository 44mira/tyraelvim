-- code screenshots

return {
  'michaelrommel/nvim-silicon',
  lazy = true,
  cmd = 'Silicon',
  opts = {
    -- Custom font
    -- font = 'CommitMono Nerd Font=18',
    theme = '1337',
    line_offset = function(args)
      -- get current line number as offset
      return args.line1
    end,
    tab_width = 2,
    line_pad = 1,
    no_window_controls = true,
    to_clipboard = true,
    no_round_corner = true,
    shadow_color = '#000000',
    window_title = function()
      -- get current buffer as title
      return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()), ':t')
    end,
  },
}
