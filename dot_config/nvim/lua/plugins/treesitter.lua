return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = true,
		event = { "BufReadPre", "BufNewFile" },
		build = ":TSUpdate",
		dependencies = {
			{ "nvim-treesitter/nvim-treesitter-textobjects" },
		},
		config = function()
			local treesitter = require("nvim-treesitter.configs")
			treesitter.setup({

				ensure_installed = {
					"lua",
					"markdown",
					"bash",
					"python",
					"javascript",
					"typescript",
					"tsx",
					"html",
					"css",
					"go",
					"markdown",
					"yaml",
					"toml",
					"svelte",
					"dockerfile",
					"terraform",
					"graphql",
					"query",
					"sql",
					"rust",
				},

				-- install languages synchronously (only applied to `ensure_installed`)
				sync_install = false,

				-- Automatically install missing parsers when entering buffer
				-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
				auto_install = true,

				highlight = {
					enable = true, -- false will disable the whole extension
					disable = { "css" }, -- list of language that will be disabled
				},
				indent = { enable = true },
			})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		lazy = true,
		config = function()
			require("nvim-treesitter.configs").setup({
				textobjects = {
					select = {
						enable = true,

						-- Automatically jump forward to textobj, similar to targets.vim
						lookahead = true,
						keymaps = {
							-- You can use the capture groups defined in textobjects.scm
							["af"] = "@function.outer",
							["if"] = "@function.inner",
							["ac"] = "@class.outer",
							["ic"] = "@class.inner",
							["al"] = "@loop.outer",
							["il"] = "@loop.inner",
							["ad"] = "@conditional.outer",
							["id"] = "@conditional.inner",
						},
					},
					swap = {
						enable = true,
						swap_next = {
							["<leader>a"] = "@parameter.inner", -- swap parameters/argument with next
						},
						swap_previous = {
							["<leader>A"] = "@parameter.inner", -- swap parameters/argument with prev
						},
					},
				},
			})
		end,
	},
	{ "windwp/nvim-ts-autotag", opts = {} },
}
