return {
    -- ColorSchemes + Icons
    {
        "Mofiqul/dracula.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("dracula-soft")
        end,
    },
    -- tmux
    { "christoomey/vim-tmux-navigator" },

    -- Highlight word under cursor
    { "RRethy/vim-illuminate",         event = "VeryLazy" },
}
