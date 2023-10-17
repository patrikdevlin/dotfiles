return {
	-- ColorSchemes + Icons
	{
		"gbprod/nord.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("nord").setup({})
			vim.cmd.colorscheme("nord")
		end,
	},
	{ "nvim-tree/nvim-web-devicons", lazy = true },

	-- helpers
	{ "nvim-lua/plenary.nvim", lazy = true },

	-- tmux
	{ "christoomey/vim-tmux-navigator" },
}
