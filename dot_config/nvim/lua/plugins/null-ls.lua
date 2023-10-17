return {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function()
        local formatting = require("null-ls").builtins.formatting
        return {
            debug = false,
            sources = {
                formatting.prettierd,
                formatting.black.with({ extra_args = { "--fast" } }),
                formatting.isort,
                formatting.stylua,
                formatting.gofumpt,
                formatting.goimports,
                formatting.buf,
                formatting.sql_formatter,
            },
        }
    end,
}
