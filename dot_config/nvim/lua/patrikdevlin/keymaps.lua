-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --
-- Better window navigation
-- keymap("n", "<C-h>", "<C-w>h", opts)
-- keymap("n", "<C-j>", "<C-w>j", opts)
-- keymap("n", "<C-k>", "<C-w>k", opts)
-- keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +4<CR>", opts)
keymap("n", "<C-Down>", ":resize -4<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +4<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -4<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Navigate to last changed
keymap("n", "gl", "`.", { silent = true, desc = "Jump to the last change in the file" })

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
keymap({ "n", "v" }, "<leader>d", [["_d]], opts)

-- Comment
keymap("n", "<leader>/", "gcc", { silent = true, remap = true })
keymap("v", "<leader>/", "gc", { silent = true, remap = true })

-- Plugins --

-- Oil
keymap("n", "<leader>o", ":Oil<CR>", opts)

-- Harpoon
-- keymap("n", "<leader>ma", "<cmd>lua require'harpoon.mark'.add_file()<cr>", opts)
-- keymap("n", "<C-e>", "<cmd>lua require'harpoon.ui'.toggle_quick_menu()<cr>", opts)
-- keymap("n", "<leader>tc", "<cmd>lua require'harpoon.cmd-ui'.toggle_quick_menu()<cr>", opts)
--
-- -- quick navigation of added files
-- keymap("n", "<leader>ha", "<cmd>lua require'harpoon.ui'.nav_file(1)<cr>", opts)
-- keymap("n", "<leader>hs", "<cmd>lua require'harpoon.ui'.nav_file(2)<cr>", opts)
-- keymap("n", "<leader>hd", "<cmd>lua require'harpoon.ui' require'harpoon.ui'.nav_file(3) <cr>", opts)
-- keymap("n", "<leader>hf", "<cmd>lua require'harpoon.ui' require'harpoon.ui'.nav_file(4) <cr>", opts)
