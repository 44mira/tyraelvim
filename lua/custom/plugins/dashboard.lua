-- Dashboard configuration file

----------------
-- Text Pools --
----------------

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

-- Add your footers here as single-line strings.
FOOTERS = {
  'Life is like a box of chocolates. Lami makadawat og kisses.',
  'Also try Terraria!',
  'Gago saon og gawas?',
  'Sharmaigne. Sharmaigne. Sharmaigne. Sharmaigne. Sharmaigne.',
  'Vim btw.',
  'Javascript is nice until you have to write Javascript.',
  'If ang bisaya sa nikaon, naka?',
  'Segmentation fault (core dumped)',
  'Error at line 69.',
  'rm -rf /',
  'public static void main(String args[])',
  'Trans Rights are Human Rights!',
}

-- Use [[ ]] Lua rawstrings for directories. Invalid directories will NOT show up.
DIRECTORIES = {
  [[~\.config\nvim]],
  [[~\.config\kitty]],
  [[~\.config\hypr]],
  [[~\.config\tmux]],
  [[~\.config]],
}

------------------------
-- Randomization Code --
------------------------

math.randomseed(os.time())

local function header()
  return HEADERS[math.random(#HEADERS)]
end

local function footer()
  return FOOTERS[math.random(#FOOTERS)]
end

---------------------
-- Plugin Settings --
---------------------

local dashboard_plugin = {
  'MeanderingProgrammer/dashboard.nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    header = header(),
    directories = DIRECTORIES,
    footer = { footer() },
    highlight_groups = {
      header = 'bufferLineCurrent',
      icon = 'bufferLineCurrent',
      directory = 'jsParen',
      hotkey = 'AerialOperatorIcon',
      footer = 'jsParen',
    },
  },
}

return dashboard_plugin
