# fluovibe.nvim

A dark Neovim colorscheme with fluorescent accents, built on a deep purple background.

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
    vim.cmd.colorscheme("fluovibe")
  end,
}
```

Set `lazy = false` and `priority = 1000` so the colorscheme loads before all other plugins.

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

| Name       | Hex       |
|------------|-----------|
| Background | `#262335` |
| Background Dark | `#241B2F` |
| Foreground | `#8BA7A7` |
| Cyan       | `#61E2FF` |
| Green      | `#72F1B8` |
| Orange     | `#FF8B39` |
| Pink       | `#FC199A` |
| Purple     | `#AF6DF9` |
| Red        | `#FE4450` |
| Yellow     | `#FFCC00` |
| Comment    | `#9F9FE3` |
