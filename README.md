cmp-color-names.nvim 🌈
=======================

This Neovim plugin provides an
[nvim-cmp](https://github.com/hrsh7th/nvim-cmp) completion source
for X11 / web color names like `SlateBlue` and `SeaGreen`.

Installation
------------

Using [Packer](https://github.com/wbthomason/packer.nvim):
```lua
use({
  'https://https://github.com/nat-418/cmp-color-names.nvim',
  config = {
    require('cmp-color-names').setup()
  }
})
```

Configuration
-------------

Add this source to your `nvim-cmp` configuration:

```lua
cmp.setup({
  sources = cmp.config.sources({
    { name = 'luasnip' },
  }, {
    { name = 'path' },
    { name = 'calc' },
    { name = 'git' },
    { name = 'buffer' },
    { name = 'omni' },
    { name = 'color_names'},
  })
})
```

Usage
-----

Enjoy autocompleting obscure named colors!

