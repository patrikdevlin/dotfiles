return {
	-- ColorSchemes + Icons
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin-macchiato")
		end,
	},
	-- {
	--     "Mofiqul/dracula.nvim",
	--     lazy = false,
	--     priority = 1000,
	--     config = function()
	--         vim.cmd.colorscheme("dracula-soft")
	--     end,
	-- },
	-- tmux
	{ "christoomey/vim-tmux-navigator" },

	-- Highlight word under cursor
	{ "RRethy/vim-illuminate", event = "VeryLazy" },

	-- Fix typescript commentting
	{
		"folke/ts-comments.nvim",
		opts = {},
		lazy = true,
		enabled = true,
	},
}
