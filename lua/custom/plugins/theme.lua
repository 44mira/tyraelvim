-- You can easily change to a different colorscheme.

return {
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is

  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`

  'sainnhe/gruvbox-material',
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    -- Load the colorscheme and options here

    vim.cmd 'let g:gruvbox_material_background = "hard"'
    vim.cmd.colorscheme 'gruvbox-material'
  end,
}
