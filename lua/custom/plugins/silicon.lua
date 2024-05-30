-- code screenshots

return {
  'michaelrommel/nvim-silicon',
  lazy = true,
  cmd = 'Silicon',
  opts = {
    font = 'GeistMono NF=20',
    theme = 'OneHalfDark',
    line_offset = function(args)
      -- get current line number as offset
      return args.line1
    end,
    to_clipboard = true,
    window_title = function()
      -- get current buffer as title
      return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()), ':t')
    end,
  },
}
