return {
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = true,
        event = { "BufReadPre", "BufNewFile" },
        build = ":TSUpdate",
        dependencies = {
            { "nvim-treesitter/nvim-treesitter-textobjects" },
            { "windwp/nvim-ts-autotag" },
        },
        config = function()
            local treesitter = require("nvim-treesitter.configs")
            treesitter.setup({

                ensure_installed = {
                    "lua",
                    "markdown",
                    "bash",
                    "python",
                    "javascript",
                    "typescript",
                    "go",
                    "markdown",
                    "yaml",
                    "toml",
                    "html",
                    "css",
                    "svelte",
                    "dockerfile",
                    "terraform",
                    "graphql",
                    "query",
                    "tsx",
                    "sql",
                },

                -- install languages synchronously (only applied to `ensure_installed`)
                sync_install = false,

                -- Automatically install missing parsers when entering buffer
                -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
                auto_install = true,

                highlight = {
                    enable = true,       -- false will disable the whole extension
                    disable = { "css" }, -- list of language that will be disabled
                },
                indent = {
                    enable = true,
                    disable = { "python", "css" },
                },
                autotag = {
                    enable = true,
                },
                context_commentstring = {
                    enable = true,
                    enable_autocmd = false,
                },
            })
        end,
    },
    {
        "windwp/nvim-ts-autotag",
        event = "VeryLazy",
        opts = {},
    },
    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        lazy = true,
        config = function()
            require("nvim-treesitter.configs").setup({
                textobjects = {
                    select = {
                        enable = true,

                        -- Automatically jump forward to textobj, similar to targets.vim
                        lookahead = true,
                        keymaps = {
                            -- You can use the capture groups defined in textobjects.scm
                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",
                            ["ac"] = "@class.outer",
                            ["ic"] = "@class.inner",
                            ["al"] = "@loop.outer",
                            ["il"] = "@loop.inner",
                            ["ad"] = "@conditional.outer",
                            ["id"] = "@conditional.inner",
                        },
                    },
                    swap = {
                        enable = true,
                        swap_next = {
                            ["<leader>a"] = "@parameter.inner", -- swap parameters/argument with next
                        },
                        swap_previous = {
                            ["<leader>A"] = "@parameter.inner", -- swap parameters/argument with prev
                        },
                    },
                },
            })
        end,
    },
}
