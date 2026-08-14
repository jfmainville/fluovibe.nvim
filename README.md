# fluovibe.nvim

A dark Neovim colorscheme with fluorescent accents, built on a near-black navy background. The overall vibe is cyberpunk.

## Requirements

- Neovim >= 0.8.0
- A terminal with true color support (`termguicolors`)

## Installation

### lazy.nvim

```lua
{
  "jfmainville/fluovibe.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("fluovibe").setup({
      transparent = true, -- default: true
    })
    vim.cmd.colorscheme("fluovibe")
  end,
}
```

Set `lazy = false` and `priority = 1000` so the colorscheme loads before all other plugins.

## Configuration

```lua
require("fluovibe").setup({
  transparent = true, -- boolean, default: true
})
```

## Plugin Support

fluovibe.nvim ships with highlight groups for the following plugins:

- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [noice.nvim](https://github.com/folke/noice.nvim)
- [flash.nvim](https://github.com/folke/flash.nvim)
- [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim)
- [blink.cmp](https://github.com/Saghen/blink.cmp)
- [trouble.nvim](https://github.com/folke/trouble.nvim)
- [todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [aerial.nvim](https://github.com/stevearc/aerial.nvim)
- [diffview.nvim](https://github.com/sindrets/diffview.nvim)
- [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
- [oil.nvim](https://github.com/stevearc/oil.nvim)
- [codediff.nvim](https://github.com/esmuellert/codediff.nvim)
- [atlas.nvim](https://github.com/emrearmagan/atlas.nvim)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [undotree](https://github.com/mbbill/undotree)
- [mason.nvim](https://github.com/williamboman/mason.nvim)

## lualine Theme

A matching [lualine](https://github.com/nvim-lualine/lualine.nvim) theme is included:

```lua
require("lualine").setup({
  options = {
    theme = "fluovibe",
  },
})
```

## Color Palette

| Name            | Hex       |
| --------------- | --------- |
| Background      | `#000B1E` |
| Background Dark | `#091833` |
| Foreground      | `#CBE4FF` |
| Cyan            | `#5FD4E0` |
| Green           | `#00FF00` |
| Orange          | `#F57800` |
| Pink            | `#FF1AEE` |
| Purple          | `#B200F5` |
| Red             | `#FF0000` |
| Yellow          | `#FFFF00` |
| Comment         | `#057583` |

---
