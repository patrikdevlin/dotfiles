return {
	"kyazdani42/nvim-tree.lua",
	opts = {
		actions = {
			open_file = {
				quit_on_open = true,
			},
		},
		update_focused_file = {
			enable = true,
			update_cwd = true,
		},
	},
}
