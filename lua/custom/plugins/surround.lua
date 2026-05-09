local default_s_maps = { 'sa', 'sd', 'sr', 'sf', 'sF', 'sh' }
local modes = { 'n', 'x', 'o' }
for _, mode in ipairs(modes) do
  for _, lhs in ipairs(default_s_maps) do
    pcall(vim.keymap.del, mode, lhs)
  end
  pcall(vim.keymap.del, mode, 's')
end

require('mini.surround').setup {
  mappings = {
    add = 'gsa',
    delete = 'gsd',
    find = 'gsf',
    find_left = 'gsF',
    highlight = 'gsh',
    replace = 'gsr',
  },
}
