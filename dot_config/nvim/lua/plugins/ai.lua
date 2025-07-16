return {
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				panel = {
					enabled = false,
				},
				suggestion = {
					auto_trigger = true,
					keymap = {
						accept = "<C-l>",
						dismiss = "<C-]>",
					},
				},
			})
		end,
	},
	{
		"greggh/claude-code.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim", -- Required for git operations
		},
		keys = {
			{ "<leader>cc", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude Code" },
		},
		config = function()
			require("claude-code").setup({
				window = {
					position = "float",
				},
			})
		end,
	},
}
