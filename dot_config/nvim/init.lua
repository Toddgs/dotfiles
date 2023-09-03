--[[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = ','
vim.g.localleader = '\\'

-- IMPORTS
require('vars')      -- Variables
require('keys')      -- Keymaps
require('plug')      -- Plugins
require('opts')      -- Options

-- PLUGINS
require('nvim-tree').setup{}
require('lualine').setup{}
require('nvim-autopairs').setup{}
require('hardtime').setup{}
require('range-highlight').setup{}

