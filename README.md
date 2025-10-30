# anysphere-dark.nvim

Neovim port of **Anysphere Dark** by Cursor with tight LazyVim plugin support.

## Install (Lazy)

```lua
-- lazy.nvim spec
{
  "wkflanders/anysphere-dark.nvim",
  name = "anysphere-dark",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("anysphere")
  end,
},
```
