vim.pack.add { 'https://github.com/norcalli/nvim-colorizer.lua' }
require('colorizer').setup({
  'css',
  'javascript',
  'html',
}, { css = true, mode = 'foreground' })
