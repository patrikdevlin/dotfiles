return {
	-- ColorSchemes + Icons
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme catppuccin-macchiato]])
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
}
