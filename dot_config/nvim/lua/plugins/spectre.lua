return {
    {
        "nvim-pack/nvim-spectre",
        keys = {
            { "<leader>S", '<cmd>lua require("spectre").toggle()<CR>', { desc = "Toggle Spectre" } },
            {
                "<leader>sw",
                '<cmd>lua require("spectre").open_visual({select_word=true})<CR>',
                { desc = "Search current word" },
            },
        },
        opts = {},
    },
}
