return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		bigfile = { enabled = true },
		indent = {
			enabled = true,
			scope = {
				animate = {
					duration = {
						total = 250,
					},
				},
			},
		},
		input = { enabled = true },
		notifier = { enabled = true },
		bufdelete = { enabled = true },
		git = { enabled = true },
		gitbrowse = { enabled = true },
	},
	keys = {
		{
			"<leader>bd",
			function()
				Snacks.bufdelete()
			end,
			desc = "Delete Buffer",
		},
		{
			"<leader>n",
			function()
				Snacks.notifier.show_history()
			end,
			desc = "Dismiss All Notifications",
		},
		{
			"<leader>nd",
			function()
				Snacks.notifier.hide()
			end,
			desc = "Dismiss All Notifications",
		},
		{
			"<leader>gB",
			function()
				Snacks.gitbrowse()
			end,
			desc = "Git Browse",
		},
		{
			"<leader>gb",
			function()
				Snacks.git.blame_line()
			end,
			desc = "Git Blame Line",
		},
	},
}
