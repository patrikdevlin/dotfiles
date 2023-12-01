return {
	{
		"NeogitOrg/neogit",
		keys = {
			{ "<leader>g", "<cmd>Neogit<cr>", { desc = "Open Neogit" } },
		},
		dependencies = {
			"nvim-lua/plenary.nvim", -- required
			"nvim-telescope/telescope.nvim", -- optional
			"sindrets/diffview.nvim", -- optional
		},
		config = true,
	},
	{
		"sindrets/diffview.nvim",
		keys = {
			{ "<leader>dd", "<cmd>DiffviewOpen<cr>", { desc = "Diffview Open" } },
			{ "<leader>dc", "<cmd>DiffviewClose<cr>", { desc = "Diffview Close" } },
			{ "<leader>dr", "<cmd>DiffviewRefresh<cr>", { desc = "Diffview Refresh" } },
			{ "<leader>db", "<cmd>DiffviewFileHistory<cr>", { desc = "Diffview current branch" } },
			{ "<leader>df", "<cmd>DiffviewFileHistory %<cr>", { desc = "Diffview current file" } },
		},
		opts = {},
	},
	{
		"ruifm/gitlinker.nvim",
		event = "VeryLazy",
		opts = {},
	},
}
