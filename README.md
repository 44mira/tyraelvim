
# tyraelvim

> This Neovim configuration is based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim).
> Refer there for features not covered in this documentation.

![image](https://github.com/44mira/tyraelvim/assets/116419708/5497aaab-46bf-49e0-9a4c-42d51b78d6d3)
    
And he has finally made his own distribution.

## Version Changelogs

- Remove tabs 
- Add `catppuccin` as a default theme.
- Add `headlines.nvim`
- Add `copilot.lua` for Copilot integration
    - Add `lualine-copilot` for icon
- Add `aerial.nvim`
    - With Telescope integration
- Add `vim-kitty-scrollback`

## Installation

> **IMPORTANT**: This repository doubles as my backup for my configuration backup so clone from a stable branch version not the main one!

Refer to *kickstart.nvim*'s installation guide, but replace the GitHub repo with `https://github.com/44mira/tyraelvim.git/tree/<STABLE BRANCH>`

It is *recommended* that you then customize the text pools found in `./lua/custom/plugins/dashboard.lua`.

## Features

- File handling using:
    - a text buffer *[oil.nvim](https://github.com/stevearc/oil.nvim)*
    - a file tree *[neotree](https://github.com/nvim-neo-tree/neo-tree.nvim)*
- Seamless navigation with Tmux *[vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)*
- Beautiful code snippet screenshots *[codesnap.nvim](https://github.com/mistricky/codesnap.nvim)*
- Lualine *[lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)*
- Customizable dashboard *[dashboard.nvim](https://github.com/MeanderingProgrammer/dashboard.nvim)*
- Extensive markdown support
    - Previewing *[markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)*
    - Stylized rendering in text *[headlines.nvim](https://github.com/lukas-reineke/headlines.nvim)*
- Autoclosing HTML tags *[nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)*
- Autoclosing and paired grouping symbols *[autoclose.nvim](https://github.com/m4xshen/autoclose.nvim)*
- Toggleable lines for indentation *[indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)*
- Blazingly fast project traversal using marks *[harpoon](https://github.com/ThePrimeagen/harpoon)*
- Document symbols navigation *[aerial.nvim](https://github.com/stevearc/aerial.nvim)*
- Support for Github Copilot *[copilot.lua](https://github.com/zbirenbaum/copilot.lua)*
- Pre-configured Kitty Scrollback *[kitty-scrollback.nvim](https://github.com/mikesmithgh/kitty-scrollback.nvim)*
- Supplementary keymappings
- Ships with Language Server Protocols (Make sure you have their dependencies
  installed)
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

-- Open File tree
bind('n', '<leader>t', '<cmd>Neotree toggle reveal<CR>', { desc = 'Open Neo[T]ree' })

-- Open an Oil buffer
bind('n', '<leader>f', '<cmd>Oil<CR>', { desc = 'Open [F]ile explorer buffer' })

-- Toggle lines for indented
bind('n', '<leader>i', '<cmd>IBLEnable | set cc=80<CR>', { desc = 'Enable Indent Blank Line' })
bind('n', '<leader>j', '<cmd>IBLDisable | set cc=0<CR>', { desc = 'Disable Indent Blank Line' })

-- Additional normal bind shortcut for ergonomics
bind('i', 'jk', '<Esc>', { desc = 'Normal mode' })

-- Close a tab
bind('n', '<leader>bd', '<cmd>bd<CR>', { desc = '[B]uffer [D]elete' })

-- Cycle through tabs
bind('n', '<leader>[', '<cmd>bp<CR>', { desc = '[[] Previous Buffer' })
bind('n', '<leader>]', '<cmd>bn<CR>', { desc = '[]] Next Buffer' })

-- Markdown preview
bind('n', '<leader>pm', '<cmd>MarkdownPreviewToggle<CR>', { desc = '[P]review [M]arkdown' })

-- Note taking
bind('n', '<leader>nb', '<cmd>:enew<CR>', { desc = '[N]ew [B]uffer' })
```

</details> 
<details>
  <summary> <code>lua/custom/plugins/harpoon.lua</code> code snippet</summary>

```lua
-- lua/custom/plugins/harpoon.lua

-- Mark creation and finding
bind('n', '<leader>m', require('harpoon.mark').add_file, { desc = '[M]ake mark' })
bind('n', '<leader>o', require('harpoon.ui').toggle_quick_menu, { desc = '[O]pen marks' })
bind('n', '<leader>sm', '<cmd>Telescope harpoon marks<CR>', { desc = '[S]earch [M]arks' })

-- Scroll through marks
bind('n', '<leader>wj', require('harpoon.ui').nav_prev, { desc = '[W]arp to previous mark' })
bind('n', '<leader>wk', require('harpoon.ui').nav_next, { desc = '[W]arp to next mark' })

-- Jump through marks like tabs
for i = 1, 9 do
    bind('n', ('<M-%d>'):format(i), function()
        require('harpoon.ui').nav_file(i)
    end, { desc = ('Jump to mark %d'):format(i) })
end
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

