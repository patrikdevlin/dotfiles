local status_ok, lsp = pcall(require, "lsp-zero")
if not status_ok then
	return
end

local status_ok, cmp = pcall(require, "cmp")
if not status_ok then
	return
end

lsp.preset("recommended")

lsp.ensure_installed({
	"tsserver",
	"gopls",
	"terraformls",
	"pyright",
	"lua_ls",
})

-- See :help lsp-zero-preferences
lsp.set_preferences({
	set_lsp_keymaps = true, -- set to false if you want to configure your own keybindings
	manage_nvim_cmp = true, -- set to false if you want to configure nvim-cmp on your own
})

lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr }
	local bind = vim.keymap.set

	bind("n", "gr", ":Telescope lsp_references<CR>", opts)
	bind("n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
	bind("n", "<leader>lj", "<cmd>lua vim.diagnostic.goto_next({buffer=0})<cr>", opts)
	bind("n", "<leader>lk", "<cmd>lua vim.diagnostic.goto_prev({buffer=0})<cr>", opts)
	bind("n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
	bind("n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
end)

lsp.setup_nvim_cmp({
	mapping = lsp.defaults.cmp_mappings({
		["<C-k>"] = cmp.mapping.select_prev_item(),
		["<C-j>"] = cmp.mapping.select_next_item(),
		["<C-p>"] = vim.NIL,
		["<C-n>"] = vim.NIL,
	}),
})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
