require('material').setup({

	contrast = {
		sidebars = true, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
		floating_windows = true, -- Enable contrast for floating windows
		line_numbers = false, -- Enable contrast background for line numbers
		sign_column = false, -- Enable contrast background for the sign column
		cursor_line = false, -- Enable darker background for the cursor line
		non_current_windows = false, -- Enable darker background for non-current windows
		popup_menu = true, -- Enable lighter background for the popup menu
	},

	italics = {
		comments = false, -- Enable italic comments
		keywords = true, -- Enable italic keywords
		functions = true, -- Enable italic functions
		strings = true, -- Enable italic strings
		variables = false -- Enable italic variables
	},

	contrast_filetypes = { -- Specify which filetypes get the contrasted (darker) background
		"terminal", -- Darker terminal background
		"packer" -- Darker packer background
		-- "qf" -- Darker qf list background
	},

	high_visibility = {
		lighter = true, -- Enable higher contrast text for lighter style
		darker = true -- Enable higher contrast text for darker style
	},

	disable = {
		colored_cursor = true, -- Disable the colored cursor
		borders = true, -- Disable borders between verticaly split windows
		background = false, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
		term_colors = false, -- Prevent the theme from setting terminal colors
		eob_lines = false -- Hide the end-of-buffer lines
	},

	lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )

	async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)

	custom_highlights = {} -- Overwrite highlights with your own
})
