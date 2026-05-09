vim.pack.add { 'https://github.com/scottmckendry/cyberdream.nvim' }

require('cyberdream').setup {
  variant = 'default',
  transparent = true,
  borderless_pickers = true,
  highlights = {
    Visual = { bg = '#3c59a3' },
  },
  extensions = {
    telescope = true,
  },
}

vim.cmd.colorscheme 'cyberdream'
