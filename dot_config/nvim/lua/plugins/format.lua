return {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
        {
            -- Customize or remove this keymap to your liking
            "<leader>lf",
            function()
                require("conform").format({ async = true, lsp_fallback = true })
            end,
            mode = "",
            desc = "Format buffer",
        },
    },
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            python = { "isort", "black" },
            javascript = { { "prettierd", "prettier" } },
            typescript = { { "prettierd", "prettier" } },
            typescriptreact = { { "prettierd", "prettier" } },
            markdown = { { "prettierd", "prettier" } },
            json = { { "prettierd", "prettier" } },
            jsonc = { { "prettierd", "prettier" } },
        },
        -- Set up format-on-save
        format_on_save = function(bufnr)
            -- Disable with a global or buffer-local variable
            if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
                return
            end
            return { timeout_ms = 750, lsp_fallback = true }
        end,
    },
}
