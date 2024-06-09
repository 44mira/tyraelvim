
# tyraelvim

> This Neovim configuration is based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim).
> Refer there for features not covered in this documentation.

![image](https://github.com/44mira/tyraelvim/assets/116419708/e3e575d5-bc57-4f3d-9b1d-640e28fd75da)
    
And he has finally made his own distribution.

## Version Changelogs

- Add a `Neorg` configuration
- Add custom folds and markers
- Remove `vim-tmux-navigator`
- Add `zen-mode` and `twilight`
- Use `mini.pairs` instead of `autoclose.nvim`
- Add a disable command for autoformatting in `conform.nvim`
- Redid code structure of `init.lua`, `dashboard.lua`, and `theme.lua`
    - Added folds for legibility
- Add hanging indents on wrapping lines
- Add `leap.nvim`
- Improve README documentation and installation guide

## Features

- File handling using:
    - a text buffer *[oil.nvim](https://github.com/stevearc/oil.nvim)*
    - a file tree *[neotree](https://github.com/nvim-neo-tree/neo-tree.nvim)*
- Beautiful code snippet snapshots *[silicon.nvim](https://github.com/michaelrommel/nvim-silicon)*
- Zen-mode *[zen-mode](https://github.com/folke/zen-mode.nvim)* and *[twilight](https://github.com/folke/twilight.nvim)*
- Lualine *[lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)*
- Customizable dashboard *[dashboard.nvim](https://github.com/MeanderingProgrammer/dashboard.nvim)*
- Extensive markdown support
    - Previewing *[markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)*
    - Stylized rendering in text *[headlines.nvim](https://github.com/lukas-reineke/headlines.nvim)*
- Autoclosing HTML tags *[nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)*
- Autoclosing and paired grouping symbols *[mini.pairs](https://github.com/echasnovski/mini.pairs)*
- Toggleable lines for indentation *[indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)*
- Blazingly fast project traversal using marks *[harpoon](https://github.com/ThePrimeagen/harpoon)*
- Document symbols navigation *[aerial.nvim](https://github.com/stevearc/aerial.nvim)*
- Support for Github Copilot *[copilot.lua](https://github.com/zbirenbaum/copilot.lua)*
- Pre-configured Kitty Scrollback *[kitty-scrollback.nvim](https://github.com/mikesmithgh/kitty-scrollback.nvim)*
- Note-taking *[Neorg](https://github.com/nvim-neorg/neorg)*
- Fast motions to go to wherever on the screen *[leap.nvim](https://github.com/ggandor/leap.nvim)*
- Customizable folds and fold markers
- Supplementary keymappings
- Ships with Language Server Protocols (Make sure you have their dependencies
  installed)
    - C/C++ `clangd`
    - Python `pyright`
    - Lua `lua_ls`
    - Javascript/Typescript `tsserver`

## Preview Screenshots

> NOTE: background opacity is not a feature included in this distribution but in my Arch Linux + `Hyprland` configuration.

| `init.lua` | `dashboard.lua` |
| --- | --- |
| ![image](https://github.com/44mira/tyraelvim/assets/116419708/104c96d7-65d2-45b4-95df-9bd75934c238) | ![image](https://github.com/44mira/tyraelvim/assets/116419708/186980f9-d590-41af-9149-31c4edb0d00c) | 

| `neotree` | `splits and telescope buffer` |
| --- | --- |
| ![image](https://github.com/44mira/tyraelvim/assets/116419708/722baf03-e39b-45c9-b410-9a9d0d8f2809) |  ![image](https://github.com/44mira/tyraelvim/assets/116419708/cc71329f-b5bd-4771-b28d-a16756881eda) |

| `neorg with zen-mode and twilight` | `preview markdown` |
| --- | --- |
| ![image](https://github.com/44mira/tyraelvim/assets/116419708/c6319d51-f42a-4cb5-a4dc-c0622d3f4f7c) | ![image](https://github.com/44mira/tyraelvim/assets/116419708/779069d5-9049-4951-b12a-3267e3a9e9dc) |



## Installation

> **IMPORTANT**: This repository doubles as my backup for my configuration backup so clone from a stable branch version not the main one!

1. Install all dependencies needed by this distribution (Can refer to [`kickstart.nvim`](https://github.com/nvim-lua/kickstart.nvim)'s documentation)
    - `neovim`.
    - Basic utilities such as: `git`, `make`, `unzip`, `ripgrep`, and `gcc`
    - A clipboard tool such as `xclip`/`xsel`/`win32yank` (depending on platform)
    - A *[Nerd Font](https://www.nerdfonts.com/)* of your choice
    - Language setup such as `python`, `npm`, `cargo` (Rust), `go` (Go)
    - The [`kitty`](https://sw.kovidgoyal.net/kitty/) terminal is also recommended, as this distribution supports `kitty-scrollback` and `vim-kitty`
        - If you are going to use `kitty-scrollback`, refer to their [documentation](https://github.com/mikesmithgh/kitty-scrollback.nvim) on other things needed to setup beforehand
    - A Github account eligible for Copilot, if you are planning on using the `copilot.lua` plugin.

2. Clone your stable version of choice

| OS | PATH |
| :- | :--- |
| Linux, MacOS | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |
| Windows (cmd)| `%userprofile%\AppData\Local\nvim\` |
| Windows (powershell)| `$env:USERPROFILE\AppData\Local\nvim\` |

```bash
git clone -b stable-<VERSION> git@https://github.com/44mira/tyraelvim.git 
"${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

3. Install your language servers and formatters needed using `:Mason` and update plugins with `:Lazy`. 
    - You can also install `tree-sitter` using `:TSInstall` syntax highlighting manually, though this automatically happens whenever you open a file without treesitter parsing yet.

> NOTE: All keybindings won't be found in \[\[ tyraelvim keymaps ]], some of them you will have to find (`Telescope Live-Grep` can help with this).

4. Optional customization (these can all be found in `./lua/custom/plugins`):
    - Text pools found in `dashboard.lua`
    - Font and background for `silicon`
    - Theme in `themes`

## Keymappings

From `kickstart.nvim`, you can press `<leader>sk` to search for particular keymappings. Moreover, `kickstart.nvim` has `which-key.nvim` for hints.

<details>
  <summary> <code>init.lua</code> code snippet</summary>

```lua
-- ./init.lua
-- shorthand for binding keymap
local bind = vim.keymap.set

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
bind('n', '<leader>bd', '<cmd>bd!<CR>', { desc = '[B]uffer [D]elete' })

-- Cycle through buffers
bind('n', '<leader>[', '<cmd>bp<CR>', { desc = '[[] Previous Buffer' })
bind('n', '<leader>]', '<cmd>bn<CR>', { desc = '[]] Next Buffer' })

-- Zen mode
bind('n', '<leader>zen', function()
  require('zen-mode').toggle()
end, { desc = '[Zen] mode' })

-- Trigger Twilight
bind('n', '<leader>tw', '<cmd>Twilight<CR>', { desc = 'Toggle [Tw]ilight' })

-- Take code snapshot
bind('v', '<leader><leader>', function()
  require('nvim-silicon').clip()
end, { desc = '[ ][ ] Take code snapshot' })

-- Markdown preview
bind('n', '<leader>pm', '<cmd>MarkdownPreviewToggle<CR>', { desc = '[P]review [M]arkdown' })

-- Note taking
bind('n', '<leader>nb', '<cmd>:enew<CR>', { desc = '[N]ew [B]uffer' })

-- Conceal cursor with in a Neorg file
bind('n', '<leader>cc', function()
  if vim.o.concealcursor == '' then
    vim.o.concealcursor = 'nc'
  else
    vim.o.concealcursor = ''
  end
end, { desc = '[C]onceal [c]ursor' })

-- Format on save disable on command
vim.api.nvim_create_user_command('FormatDisable', function(args)
  if args.bang then
    -- FormatDisable! will disable formatting just for this buffer
    vim.b.disable_autoformat = true
  else
    vim.g.disable_autoformat = true
  end
end, {
  desc = 'Disable autoformat-on-save',
  bang = true,
})
vim.api.nvim_create_user_command('FormatEnable', function()
  vim.b.disable_autoformat = false
  vim.g.disable_autoformat = false
end, {
  desc = 'Re-enable autoformat-on-save',
})
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

