local builtin = require 'telescope.builtin'
vim.keymap.set('n', '<leader>sa', function() builtin.find_files { hidden = true, no_ignore = true } end, { desc = 'Search All' })
