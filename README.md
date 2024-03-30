
# tyraelvim

> This Neovim configuration is based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim).
> Refer there for features not covered in this documentation.

    888                                       888          d8b
    888                                       888          Y8P
    888                                       888
    888888 888  888 888d888  8888b.   .d88b.  888 888  888 888 88888b.d88b.
    888    888  888 888P"       "88b d8P  Y8b 888 888  888 888 888 "888 "88b
    888    888  888 888     .d888888 88888888 888 Y88  88P 888 888  888  888
    Y88b.  Y88b 888 888     888  888 Y8b.     888  Y8bd8P  888 888  888  888
     "Y888  "Y88888 888     "Y888888  "Y8888  888   Y88P   888 888  888  888
               888
          Y8b d88P
           "Y88P"
    
And he has finally made his own distribution.

## Version Changelogs

- Committed and documented everything!
- Removed preset directories for dashboard.

## Installation

> **IMPORTANT**: This repository doubles as my backup for my configuration backup so clone from a stable branch version not the main one!

Refer to *kickstart.nvim*'s installation guide, but replace the GitHub repo with `https://github.com/44mira/tyraelvim.git/tree/<STABLE BRANCH>`

## Features

- File tree *[nvimtree](https://github.com/nvim-tree/nvim-tree.lua)*
- Tabs *[bufferline.nvim](https://github.com/akinsho/bufferline.nvim)*
- Customizable dashboard *[dashboard.nvim](https://github.com/MeanderingProgrammer/dashboard.nvim)*
- Markdown previewing *[markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)*
- Autoclosing HTML tags *[nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)*
- Autoclosing and paired grouping symbols *[autoclose.nvim](https://github.com/m4xshen/autoclose.nvim)*
- Toggleable lines for indentation *[indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)*
- Supplementary keymappings
- Ships with Language Server Protocols
    - C/C++ `clangd`
    - Python `pyright`
    - Lua `lua_ls`
    - Javascript/Typescript `tsserver`
    - Tailwind `tailwindcss`
    - HTML `html`
    - CSS `cssls`
    - Rust `rust_analyzer`
    - Elixir `elixirls` (disabled by default, if it isn't, then disable it. Refer to this [documentation](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#elixirls))

## Keymappings

From `kickstart.nvim`, you can press `<leader>sk` to search for particular keymappings. Moreover, `kickstart.nvim` has `which-key.nvim` for hints.

<details>
    <summary> <code>init.lua</code> code snippet</summary>

```lua
-- ./init.lua

-- shorthand for binding keymap
local bind = vim.keymap.set

-- Toggle the NvimTree
bind('n', '<leader>f', '<cmd>NvimTreeToggle<CR>', { desc = 'Open [F]ile Tree' })

-- Toggle lines for indented
bind('n', '<leader>i', '<cmd>IBLToggle<CR>', { desc = 'Toggle [I]ndent Blank Line' })

-- Additional normal bind shortcut for ergonomics
bind('i', 'jk', '<Esc>', { desc = 'Normal mode' })

-- Close a tab
bind('n', '<leader>bd', '<cmd>bd<CR>', { desc = '[B]uffer [D]elete' })

-- Cycle through tabs
bind('n', '<leader>[', '<cmd>BufferLineCyclePrev<CR>', { desc = '[[] Previous Buffer' })
bind('n', '<leader>]', '<cmd>BufferLineCycleNext<CR>', { desc = '[]] Next Buffer' })

-- Rearrange tabs
bind('n', '<leader>}', '<cmd>BufferLineMoveNext<CR>', { desc = '[}] Forward Buffer' })
bind('n', '<leader>{', '<cmd>BufferLineMovePrev<CR>', { desc = '[{] Backward Buffer' })

-- Jump to tab (Alt-1 to Alt-9)
for i = 1, 9 do
  bind('n', ('<M-%d>'):format(i), ('<cmd>BufferLineGoToBuffer %d<CR>'):format(i), { desc = ('Go to Buffer [%d]'):format(i) })
end

-- Markdown preview
bind('n', 'md', '<cmd>MarkdownPreviewToggle<CR>', { desc = 'Preview [M]ark[d]own' })
```
</details>

## Configuration

Additional plugins may be appended unto `./lua/custom/plugins/init.lua`. This is also where you can configure individual plugin settings

Be sure to remove unused LSPs in `./init.lua`.

> **RECOMMENDED**: Add custom default directories in `./lua/custom/plugins/init.lua`
Dashboard text tables are in `./textblocks.lua`.

## To be added

Might replace `nvimtree` with `oil.nvim`.
