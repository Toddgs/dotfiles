--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap
local ts_builtin = require('telescope.builtin')

-- Keybinds for plugins
map('n', '<leader>n', [[:NvimTreeToggle]], {})
map('n', '<leader>l', [[:IndentLinesToggle]], {})
map('n', '<leader>t', [[:TagbarToggle]], {})
vim.keymap.set('n', '<leader>ff', ts_builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', ts_builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', ts_builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', ts_builtin.help_tags, {})

