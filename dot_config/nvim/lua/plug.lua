-- [[ plug.lua ]]

return require('packer').startup(function(use)
	-- [[ Plugins Go Here ]]
	-- Tree browser, similar to nerdtree
	use {
		'kyazdani42/nvim-tree.lua',
		requires = 'kyazdani42/nvim-web-devicons'
	}

	-- THEMES
	use { 'mhinz/vim-startify' }
	use { 'DanilaMihailov/beacon.nvim' }
	use { 'kyazdani42/nvim-web-devicons' }
    use { 'Mofiqul/dracula.nvim' }
	use {
		'nvim-lualine/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons',
					opt = true}
	}
	use({
		"catppuccin/nvim", as = "catppuccin",
		config = function()
			vim.cmd('colorscheme catppuccin')
			require("catppuccin").setup {
				color_overrides = {
				}
			}
		end
	})
	use { 'norcalli/nvim-colorizer.lua', config = function() require('colorizer').setup {} end }
	use({ "ziontee113/color-picker.nvim",
		config = function()
			require("color-picker")
		end,
	})

	-- DEV
	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use { 'majutsushi/tagbar' }
	use { 'Yggdroot/indentLine' }
	use { 'tpope/vim-fugitive' }
	use { 'junegunn/gv.vim' }
	use { 'windwp/nvim-autopairs' }
	use {
		'kdheepak/tabline.nvim',
		config = function()
			require 'tabline'.setup {
				-- Defaults configuration options
				enable = true,
				options = {
					-- If lualine is installed tabline will use separators configured in lualine by default.
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
	}
	-- Autocomplete
	use {'neoclide/coc.nvim', branch = 'release'}

end)
