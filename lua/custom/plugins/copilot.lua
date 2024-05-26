return {
  'github/copilot.vim',
  lazy = false,
  config = function()
    vim.b.copilot_enabled = 'v:false'

    vim.keymap.set('n', '<leader>gh', function()
      vim.b.copilot_enabled = not vim.b.copilot_enabled

      vim.cmd 'Copilot status'
    end, { desc = 'Toggle [G]it[h]ub Copilot' })
  end,
}
