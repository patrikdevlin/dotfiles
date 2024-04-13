-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Close buffers
keymap("n", "<S-q>", ":bdelete<CR>", opts)

-- Close windows
keymap("n", "<leader>q", ":q<CR>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- greatest remap ever
keymap("x", "<leader>p", [["_dP]], opts)

-- next greatest remap ever : asbjornHaland
keymap({ "n", "v" }, "<leader>y", [["+y]], opts)
keymap("n", "<leader>Y", [["+Y]], opts)

keymap({ "n", "v" }, "<leader>d", [["_d]], opts)

-- Plugins --

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fh", ":Telescope resume<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>fk", ":Telescope keymaps<CR>", opts)
keymap("n", "<leader>fw", ":Telescope lsp_dynamic_workspace_symbols<CR>", opts)
keymap("n", "<leader>fo", ":Telescope oldfiles<CR>", opts)
keymap("n", "<leader>fc", ":Telescope command_history<CR>", opts)
keymap("n", "<leader>fs", ":Telescope search_history<CR>", opts)
keymap("n", "<leader>fr", ":Telescope registers<CR>", opts)

-- Comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>', opts)

-- Harpoon
keymap("n", "<leader>ma", "<cmd>lua require'harpoon.mark'.add_file()<cr>", opts)
keymap("n", "<C-e>", "<cmd>lua require'harpoon.ui'.toggle_quick_menu()<cr>", opts)
keymap("n", "<leader>tc", "<cmd>lua require'harpoon.cmd-ui'.toggle_quick_menu()<cr>", opts)
--
-- -- quick navigation of added files
keymap("n", "<leader>ha", "<cmd>lua require'harpoon.ui'.nav_file(1)<cr>", opts)
keymap("n", "<leader>hs", "<cmd>lua require'harpoon.ui'.nav_file(2)<cr>", opts)
keymap("n", "<leader>hd", "<cmd>lua require'harpoon.ui' require'harpoon.ui'.nav_file(3) <cr>", opts)
keymap("n", "<leader>hf", "<cmd>lua require'harpoon.ui' require'harpoon.ui'.nav_file(4) <cr>", opts)
