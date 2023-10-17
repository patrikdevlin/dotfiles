return {
    "lukas-reineke/indent-blankline.nvim",
    event = "VeryLazy",
    opts = {
        exclude = {
            filetypes = { "help", "NvimTree" },
            buftypes = { "terminal", "nofile" },
        },
    },
    main = "ibl",
}
