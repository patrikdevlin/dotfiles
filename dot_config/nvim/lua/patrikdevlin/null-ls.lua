local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

local formatting = null_ls.builtins.formatting
-- local diagnostics = null_ls.builtins.diagnostics

-- https://github.com/prettier-solidity/prettier-plugin-solidity
null_ls.setup({
	debug = false,
	sources = {
		formatting.prettier,
		formatting.black.with({ extra_args = { "--fast" } }),
		formatting.isort,
		formatting.stylua,
		formatting.gofumpt,
		formatting.goimports,
		formatting.buf,
		formatting.sql_formatter,
	},
})
