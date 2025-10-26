# anysphere-dark.nvim

Neovim port of **Anysphere Dark** by Cursor with tight LazyVim plugin support.

## Install (Lazy)

```lua
-- lazy.nvim spec
{
  "wkflanders/anysphere-dark.nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other plugins
  config = function()
    -- NOTE: you do not need to call setup if you don't want to.
    require("vague").setup({
      -- optional configuration here
    })
    vim.cmd("colorscheme anysphere")
  end
},
```
