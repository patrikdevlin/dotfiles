return {
	"mfussenegger/nvim-lint",
	event = { "BufWritePost", "BufReadPost", "InsertLeave" },
	config = function()
		require("lint").linters_by_ft = {
			linters_by_ft = {
				protobuf = { "buf_lint" },
				javascript = { "biomejs" },
				typescript = { "biomejs" },
				typescriptreact = { "biomejs" },
				python = { "ruff" },
				terraform = { "tflint" },
				yaml = { "yamllint" },
				json = { "jsonlint" },
			},
		}
	end,
}
