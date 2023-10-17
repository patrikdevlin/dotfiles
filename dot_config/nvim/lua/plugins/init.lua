return {
	-- ColorSchemes + Icons
	{
		"rose-pine/neovim",
		name = "rose-pine",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		opts = {
			variant = "moon",
		},
		config = function(_, opts)
			require("rose-pine").setup(opts)
			vim.cmd([[colorscheme rose-pine]])
		end,
	},
	{ "nvim-tree/nvim-web-devicons", lazy = true },

	-- tmux
	{ "christoomey/vim-tmux-navigator" },
}
