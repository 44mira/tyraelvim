-- Dashboard configuration file

----------------
-- Text Pools --
----------------

-- [[ Headers ]] {{{

-- Add your headers here. Use [[ ]] Lua rawstrings to preserve spaces.
-- Each table element is treated as a line, and it is recommended you leave an empty line at the end.
HEADERS = {
  {
    [[                                                                            ]],
    [[  888                                       888          d8b                ]],
    [[  888                                       888          Y8P                ]],
    [[  888                                       888                             ]],
    [[  888888 888  888 888d888  8888b.   .d88b.  888 888  888 888 88888b.d88b.   ]],
    [[  888    888  888 888P"       "88b d8P  Y8b 888 888  888 888 888 "888 "88b  ]],
    [[  888    888  888 888     .d888888 88888888 888 Y88  88P 888 888  888  888  ]],
    [[  Y88b.  Y88b 888 888     888  888 Y8b.     888  Y8bd8P  888 888  888  888  ]],
    [[   "Y888  "Y88888 888     "Y888888  "Y8888  888   Y88P   888 888  888  888  ]],
    [[             888                                                            ]],
    [[        Y8b d88P                                                            ]],
    [[        "Y88P"                                                              ]],
    [[                                                                            ]],
    [[]],
  },
  {

    [[░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░]],
    [[░████████╗██╗░░░██╗██████╗░░█████╗░███████╗██╗░░░░░██╗░░░██╗██╗███╗░░░███╗░]],
    [[░╚══██╔══╝╚██╗░██╔╝██╔══██╗██╔══██╗██╔════╝██║░░░░░██║░░░██║██║████╗░████║░]],
    [[░░░░██║░░░░╚████╔╝░██████╔╝███████║█████╗░░██║░░░░░╚██╗░██╔╝██║██╔████╔██║░]],
    [[░░░░██║░░░░░╚██╔╝░░██╔══██╗██╔══██║██╔══╝░░██║░░░░░░╚████╔╝░██║██║╚██╔╝██║░]],
    [[░░░░██║░░░░░░██║░░░██║░░██║██║░░██║███████╗███████╗░░╚██╔╝░░██║██║░╚═╝░██║░]],
    [[░░░░╚═╝░░░░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░╚═╝╚══════╝╚══════╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝░]],
    [[░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░]],
    [[]],
  },
}
-- }}}

-- [[ Footers and Directories ]] {{{
-- Add your footers here as single-line strings.
FOOTERS = {
  'Vim btw.',
  'Trans Rights are Human Rights!',
}

-- Use [[ ]] Lua rawstrings for directories. Invalid directories will NOT show up.
DIRECTORIES = {
  [[~/.config/nvim]],
  [[~/.config/kitty]],
  [[~/.config]],
}

-- }}}

------------------------
-- Randomization Code --
------------------------

-- [[ Code ]] {{{
math.randomseed(os.time())

local function header()
  return HEADERS[math.random(#HEADERS)]
end

local function footer()
  return FOOTERS[math.random(#FOOTERS)]
end

-- }}}

---------------------
-- Plugin Settings --
---------------------

-- disable on kitty-scrollback
if vim.env.KITTY_SCROLLBACK_NVIM == 'true' then
  return {}
end

return {
  'MeanderingProgrammer/dashboard.nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    header = header(),
    directories = DIRECTORIES,
    footer = { footer() },
    highlight_groups = {
      header = 'Conditional',
      icon = 'bufferLineCurrent',
      directory = 'Number',
      hotkey = 'AerialOperatorIcon',
    },
  },
}
