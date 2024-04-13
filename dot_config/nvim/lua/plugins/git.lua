return {
    {
        "sindrets/diffview.nvim",
        keys = {
            { "<leader>dd", "<cmd>DiffviewOpen<cr>",          { desc = "Diffview Open" } },
            { "<leader>dc", "<cmd>DiffviewClose<cr>",         { desc = "Diffview Close" } },
            { "<leader>dr", "<cmd>DiffviewRefresh<cr>",       { desc = "Diffview Refresh" } },
            { "<leader>dh", "<cmd>DiffviewFileHistory<cr>",   { desc = "Diffview current branch" } },
            { "<leader>df", "<cmd>DiffviewFileHistory %<cr>", { desc = "Diffview current file" } },
        },
        opts = {},
    },
    {
        "ruifm/gitlinker.nvim",
        keys = {
            { "<leader>gy", "<cmd>lua require('gitlinker').get_link()<cr>",                        { desc = "Get link" } },
            { "<leader>gb", "<cmd>lua require('gitlinker').get_blame()<cr>",                       { desc = "Get blame" } },
            { "<leader>gr", "<cmd>lua require('gitlinker').get_repo_url({ action = 'open' })<cr>", { desc = "Open repo URL" } },
        },
        opts = {},
    },
}
