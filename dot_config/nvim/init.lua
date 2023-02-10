-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require "patrikdevlin.impatient"
require "patrikdevlin.options"
require "patrikdevlin.keymaps"
require "patrikdevlin.colorscheme"
require "patrikdevlin.cmp"
require "patrikdevlin.bufferline"
require "patrikdevlin.telescope"
require "patrikdevlin.comment"
require "patrikdevlin.nvim-tree"
require "patrikdevlin.autocommands"
require "patrikdevlin.autopairs"
require "patrikdevlin.gitsigns"
require "patrikdevlin.gitlinker"
require "patrikdevlin.lualine"
require "patrikdevlin.treesitter"
require "patrikdevlin.indentline"
require "patrikdevlin.alpha"
require "patrikdevlin.lsp"
require "patrikdevlin.toggleterm"