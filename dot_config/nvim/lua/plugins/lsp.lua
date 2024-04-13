return {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
    dependencies = {
        -- LSP Support
        { "neovim/nvim-lspconfig" },             -- Required
        { "williamboman/mason.nvim" },           -- Optional
        { "williamboman/mason-lspconfig.nvim" }, -- Optional

        -- Autocompletion
        { "hrsh7th/nvim-cmp" },         -- Required
        { "hrsh7th/cmp-nvim-lsp" },     -- Required
        { "hrsh7th/cmp-buffer" },       -- Optional
        { "hrsh7th/cmp-path" },         -- Optional
        { "saadparwaiz1/cmp_luasnip" }, -- Optional
        { "hrsh7th/cmp-nvim-lua" },     -- Optional

        -- Snippets
        { "L3MON4D3/LuaSnip" },             -- Required
        { "rafamadriz/friendly-snippets" }, -- Optional
    },
    opts = function()
        local lsp = require("lsp-zero")

        require("mason").setup({})
        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "tsserver",
                "gopls",
                "tailwindcss",
                "pyright"
            },
            handlers = {
                lsp.default_setup,
            },
        })

        lsp.on_attach(function(client, bufnr)
            local opts = { buffer = bufnr }
            local bind = vim.keymap.set

            bind("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
            bind("n", "gr", ":Telescope lsp_references<CR>", opts)
            bind("n", "gd", ":Telescope lsp_definitions<CR>", opts)
            bind("n", "gs", "<cmd> :vsplit<CR> <cmd>lua vim.lsp.buf.definition()<cr>", opts)
            bind("n", "gl", "<cmd>lua vim.diagnostic.open_float()<cr>", opts)
            bind("n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
            bind("n", "<leader>lj", "<cmd>lua vim.diagnostic.goto_next({buffer=0})<cr>", opts)
            bind("n", "<leader>lk", "<cmd>lua vim.diagnostic.goto_prev({buffer=0})<cr>", opts)
            bind("n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
            bind("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format({ async = true })<cr>")
        end)

        local cmp = require("cmp")

        cmp.setup({
            preselect = "item",
            window = {
                -- completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
            mapping = cmp.mapping.preset.insert({
                -- `Enter` key to confirm completion
                ["<CR>"] = cmp.mapping.confirm({ select = true }),

                -- Ctrl+Space to trigger completion menu
                ["<C-Space>"] = cmp.mapping.complete(),

                ["<C-k>"] = cmp.mapping.select_prev_item(),
                ["<C-j>"] = cmp.mapping.select_next_item(),
                ["<C-p>"] = vim.NIL,
                ["<C-n>"] = vim.NIL,
            }),
        })

        local lua_opts = lsp.nvim_lua_ls()
        require("lspconfig").lua_ls.setup(lua_opts)

        lsp.setup()
    end,
}
