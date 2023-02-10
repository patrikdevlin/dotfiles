local status_ok, lsp = pcall(require, "lsp-zero")
if not status_ok then
  return
end

lsp.preset('recommended')

-- See :help lsp-zero-preferences
lsp.set_preferences({
  set_lsp_keymaps = true, -- set to false if you want to configure your own keybindings
  manage_nvim_cmp = true, -- set to false if you want to configure nvim-cmp on your own
})

-- (Optional) Configure lua language server for neovim
-- lsp.nvim_workspace()

lsp.setup()

