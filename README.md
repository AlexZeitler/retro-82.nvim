# retro-82.nvim

Retro-futuristic Neovim colorscheme with a deep navy base, warm amber accents,
and cyan/teal support tones. Port of the
[omarchy-retro-82-theme](https://github.com/OldJobobo/omarchy-retro-82-theme)
palette for Neovim.

## Palette

| Token         | Hex       |
| ------------- | --------- |
| `bg`          | `#00172e` |
| `bg_alt`      | `#134e5a` |
| `fg`          | `#f6dcac` |
| `fg_dim`      | `#a7c9c6` |
| `red`         | `#f85525` |
| `orange`      | `#faa968` |
| `orange_dark` | `#e97b3c` |
| `teal`        | `#028391` |
| `teal_dim`    | `#3f8f8a` |
| `cyan`        | `#8cbfb8` |

## Install

### lazy.nvim

```lua
{
  "alexzeitler/retro-82.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("retro-82").setup({
      -- transparent = false,
      -- terminal_colors = true,
      -- styles = {
      --   comments  = { italic = true },
      --   keywords  = {},
      --   functions = {},
      --   strings   = {},
      -- },
    })
    vim.cmd.colorscheme("retro-82")
  end,
}
```

### packer.nvim

```lua
use({
  "alexzeitler/retro-82.nvim",
  config = function()
    vim.cmd.colorscheme("retro-82")
  end,
})
```

### Without setup

```vim
colorscheme retro-82
```

## Options

| Option            | Default | Description                                       |
| ----------------- | ------- | ------------------------------------------------- |
| `transparent`     | `false` | Use transparent background (terminal background). |
| `terminal_colors` | `true`  | Apply palette to `:terminal` colors.              |
| `styles.comments` | italic  | Style table merged into `Comment` / `@comment`.   |
| `styles.keywords` | `{}`    | Style table for keyword groups.                   |
| `styles.functions`| `{}`    | Style table for function groups.                  |
| `styles.strings`  | `{}`    | Style table for string groups.                    |

## Supported plugins

Core editor, Treesitter (`@...` captures), LSP semantic tokens, diagnostics,
diff, GitSigns, Telescope, nvim-tree, neo-tree, nvim-cmp, blink.cmp, which-key,
nvim-notify, mini.statusline, indent-blankline, Lazy.

## Credits

Palette and design by [@OldJobobo](https://github.com/OldJobobo) (see
[omarchy-retro-82-theme](https://github.com/OldJobobo/omarchy-retro-82-theme)).
Palette feedback by [@niraletter](https://github.com/niraletter).
