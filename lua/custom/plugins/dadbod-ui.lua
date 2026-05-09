vim.g.db_ui_use_nerd_fonts = 1

vim.pack.add {
  'https://github.com/kristijanhusak/vim-dadbod-ui',
  'https://github.com/tpope/vim-dadbod',
  'https://github.com/kristijanhusak/vim-dadbod-completion',
}

vim.keymap.set('n', '<leader>D', '<Cmd>DBUIToggle<CR>', { desc = '[D]adbod UI Toggle' })
