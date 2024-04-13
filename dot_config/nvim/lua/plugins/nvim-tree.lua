return {
    "kyazdani42/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        actions = {
            open_file = {
                quit_on_open = true,
            },
        },
        update_focused_file = {
            enable = true,
            update_cwd = true,
        },
    },
}
