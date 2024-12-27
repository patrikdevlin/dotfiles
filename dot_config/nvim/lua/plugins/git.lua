return {
	{
		"sindrets/diffview.nvim",
		keys = {
			{ "<leader>dd", "<cmd>DiffviewOpen<cr>", { desc = "Diffview Open" } },
			{ "<leader>dc", "<cmd>DiffviewClose<cr>", { desc = "Diffview Close" } },
			{ "<leader>dr", "<cmd>DiffviewRefresh<cr>", { desc = "Diffview Refresh" } },
			{ "<leader>dh", "<cmd>DiffviewFileHistory<cr>", { desc = "Diffview current branch" } },
			{ "<leader>df", "<cmd>DiffviewFileHistory %<cr>", { desc = "Diffview current file" } },
		},
		opts = {},
	},
}
