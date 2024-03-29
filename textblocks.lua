local M = {}

math.randomseed(os.time())

local headers = {
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

function M.header()
  return headers[math.random(#headers)]
end

local footers = {
  'Life is like a box of chocolates. Lami makadawat og kisses.',
  'Gago saon og gawas?',
  'Sharmaigne. Sharmaigne. Sharmaigne. Sharmaigne. Sharmaigne.',
  'Vim btw.',
  'Javascript is nice until you have to write Javascript.',
  'If knowledge is power, and power can control the world; then you are my world.',
  'If ang bisaya sa nikaon, naka?',
  'Segmentation fault (core dumped)',
  'Error at line 69.',
  'rm -rf /',
  'public static void main(String args[])',
  'Trans Rights are Human Rights!',
}

function M.footers()
  return footers[math.random(#footers)]
end

return M
