return {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
        -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
        "MunifTanjim/nui.nvim",
        -- OPTIONAL:
        --   `nvim-notify` is only needed, if you want to use the notification view.
        --   If not available, we use `mini` as the fallback
        "rcarriga/nvim-notify",
    },
    keys = {
        {
            "<leader>nd",
            function()
                require("noice").cmd("dismiss")
            end,
            mode = "",
            desc = "Dismiss notification",
        },
    },
    opts = {
        routes = {
            {
                view = "notify",
                filter = { event = "msg_showmode" },
            },
        },
    },
}
