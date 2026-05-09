vim.pack.add {
  'https://github.com/OlegGulevskyy/better-ts-errors.nvim',
  'https://github.com/MunifTanjim/nui.nvim',
}
require('better-ts-errors').setup {
  keymaps = {
    toggle = '<leader>w',
  },
}
