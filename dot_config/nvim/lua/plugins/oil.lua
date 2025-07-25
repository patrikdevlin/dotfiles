return {
	"stevearc/oil.nvim",
	opts = {
		keymaps = {
			["<C-v>"] = {
				"actions.select",
				opts = { vertical = true, close = true },
				desc = "Open the entry in a vertical split",
			},
			["<C-->"] = {
				"actions.select",
				opts = { horizontal = true, close = true },
				desc = "Open the entry in a horizontal split",
			},
			["<C-t>"] = false,
			["<C-h>"] = false,
			["<C-j>"] = false,
			["<C-k>"] = false,
			["<C-l>"] = false,
		},
	},
	-- Optional dependencies
	dependencies = { "nvim-tree/nvim-web-devicons" },
}
