vim.pack.add { 'https://github.com/nvim-treesitter/nvim-treesitter-context' }
require('treesitter-context').setup {
  enable = true,
  multiwindow = false,
  max_lines = 3,
  min_window_height = 0,
  line_numbers = true,
  multiline_threshold = 1,
  trim_scope = 'inner',
  mode = 'cursor',
  separator = nil,
  zindex = 20,
  on_attach = nil,
}
