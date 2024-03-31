
# tyraelvim

> This Neovim configuration is based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim).
> Refer there for features not covered in this documentation.

![image](https://github.com/44mira/tyraelvim/assets/116419708/5497aaab-46bf-49e0-9a4c-42d51b78d6d3)
    
And he has finally made his own distribution.

## Version Changelogs

- Overhauled the modularization of plugins
    - Hopefully this makes configuration even more accessible than previous
- Removed the need to manage an absolute path with `./textblocks.lua`
    - It is now within the same module as its depedendent code: `./lua/custom/plugins/dashboard.lua`
- Removed defaults for the dashboard footers.
- Added a theme module from wherein you can easily modify the theme.
- Remove `elixir_ls` from dependencies.
- Re-added `nvimtree` for file tree visualization

## Installation

> **IMPORTANT**: This repository doubles as my backup for my configuration backup so clone from a stable branch version not the main one!

Refer to *kickstart.nvim*'s installation guide, but replace the GitHub repo with `https://github.com/44mira/tyraelvim.git/tree/<STABLE BRANCH>`

It is *recommended* that you then customize the text pools found in `./lua/custom/plugins/dashboard.lua`.

## Features

- File handling using:
    - a text buffer *[oil.nvim](https://github.com/stevearc/oil.nvim)*
    - a file tree *[nvimtree](https://github.com/nvim-tree/nvim-tree.lua)*
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

## Keymappings

From `kickstart.nvim`, you can press `<leader>sk` to search for particular keymappings. Moreover, `kickstart.nvim` has `which-key.nvim` for hints.

<details>
    <summary> <code>init.lua</code> code snippet</summary>

```lua
-- ./init.lua

-- shorthand for binding keymap
local bind = vim.keymap.set

-- Toggle the NvimTree
bind('n', '<leader>t', '<cmd>NvimTreeToggle<CR>', { desc = 'Open [N]vimTree' })

-- Open an Oil buffer
bind('n', '<leader>f', '<cmd>Oil --float<CR>', { desc = 'Open [F]ile explorer buffer' })

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

Additional plugins are added by creating a corresponding `.lua` file in `./lua/custom/plugins/` that returns a Lazy.nvim table.
- The file names don't have to match the plugins, they just have to be in the directory.

Example:

```lua
-- ./lua/custom/plugins/oil.lua

return {
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = { 'nvim-tree/nvim-web-devicons' },
}
```

Be sure to remove unused LSPs in `./init.lua`.

