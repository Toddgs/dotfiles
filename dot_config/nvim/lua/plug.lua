-- [[ plug.lua ]]

return {
    -- [[ Plugins Go Here ]]
    -- Tree browser, similar to nerdtree
    {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    },

    -- THEMES
    { 'mhinz/vim-startify' },
    { 'DanilaMihailov/beacon.nvim' },
    { 'kyazdani42/nvim-web-devicons' },
    { 'Mofiqul/dracula.nvim' },
    {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons',
                    opt = true}
    },
    {
        "catppuccin/nvim", as = "catppuccin",
        config = function()
            vim.cmd('colorscheme catppuccin')
            require("catppuccin").setup {
                color_overrides = {
                }
            }
        end
    },
    { 'norcalli/nvim-colorizer.lua', config = function() require('colorizer').setup {} end },
    { "ziontee113/color-picker.nvim",
        config = function()
            require("color-picker")
        end,
    },

    -- DEV
    {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    },
    {
    'winston0410/range-highlight.nvim',
    requires = { 'winston0410/cmd-parser.nvim' }
    },
    {
       "m4xshen/hardtime.nvim",
       requires = { 'MunifTanjim/nui.nvim', "nvim-lua/plenary.nvim" }
    },
    { 'majutsushi/tagbar' },
    { 'Yggdroot/indentLine' },
    { 'tpope/vim-fugitive' },
    { 'junegunn/gv.vim' },
    { 'windwp/nvim-autopairs' },
    {
        'kdheepak/tabline.nvim',
        config = function()
            require 'tabline'.setup {
                -- Defaults configuration options
                enable = true,
                options = {
                    -- If lualine is installed tabline will separators configured in lualine by default.
                    -- These options can be used to override those settings.
                    component_separators = { '', '' },
                    section_separators = { '', '' },
                    max_bufferline_percent = 66, -- set to nil by default, and it uses vim.o.columns * 2/3
                    show_tabs_always = true, -- this shows tabs only when there are more than one tab or if the first tab is named
                    show_devicons = true, -- this shows devicons in buffer section
                    colored = true,
                    show_bufnr = false, -- this appends [bufnr] to buffer section,
                    tabline_show_last_separator = true,
                    show_filename_only = true, -- shows base filename only instead of relative path in filename
                    modified_icon = "+ ", -- change the default modified icon
                    modified_italic = true, -- set to true by default; this determines whether the filename turns italic if modified
                    show_tabs_only = false, -- this shows only tabs instead of tabs + buffers
                }
            }
            vim.cmd [[
      set guioptions-=e " Use showtabline in gui vim
      set sessionoptions+=tabpages,globals " store tabpages and globals in session
    ]]
        end,
        requires = { { 'hoob3rt/lualine.nvim', opt = true }, { 'kyazdani42/nvim-web-devicons', opt = true } }
    },
    -- Autocomplete
    {'neoclide/coc.nvim', branch = 'release'}

}
