return {
    "mfussenegger/nvim-lint",
    event = { "BufWritePost", "BufReadPost", "InsertLeave" },
    config = function()
        return {
            linters_by_ft = {
                protobuf = { "buf" },
                javascript = { "eslint_d" },
                typescript = { "eslint_d" },
                python = { "pylint" },
                terraform = { "tflint" },
                yaml = { "yamllint" },
            },
        }
    end,
}
