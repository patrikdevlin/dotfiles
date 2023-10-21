return {
	-- ColorSchemes + Icons
	{
		"Mofiqul/dracula.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("dracula-soft")
		end,
	},
	{ "nvim-tree/nvim-web-devicons", lazy = true },

	-- helpers
	{ "nvim-lua/plenary.nvim", lazy = true },

	-- tmux
	{ "christoomey/vim-tmux-navigator" },
}
