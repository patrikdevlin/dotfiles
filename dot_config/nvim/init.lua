-- Install Lazy
require("config.lazy")

require("patrikdevlin.keymaps")
require("patrikdevlin.options")
require("patrikdevlin.autocommands")
require("patrikdevlin.usercommands")

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		{ import = "plugins" },
	},
	install = { colorscheme = { "catppuccin-macchiato" } },
	checker = { enabled = true },
})
