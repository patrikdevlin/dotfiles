return {
	{
		"MagicDuck/grug-far.nvim",
		keys = {
			{
				"<leader>rw",
				':lua require("grug-far").open({ prefills = { search = vim.fn.expand("<cword>") } })<cr>',
				{ desc = "Open Grug-Far With Word" },
			},
			{ "<leader>r", ':lua require("grug-far").open({ transient = true })<cr>', { desc = "Open Grug-Far" } },
		},
		-- Note (lazy loading): grug-far.lua defers all it's requires so it's lazy by default
		-- additional lazy config to defer loading is not really needed...
		config = function()
			require("grug-far").setup({})
		end,
	},
}
