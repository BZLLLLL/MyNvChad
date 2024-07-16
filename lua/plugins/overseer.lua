local M = {
    lazy = false,
    'stevearc/overseer.nvim',
    opts = {},
    keys = {
        { "<leader>or", mode = { "n", "x", "o" }, "<cmd>OverseerRun<cr>", desc = "OverseerRun" },
        { "<leader>op", mode = { "n", "x", "o" }, "<cmd>OverseerOpen<cr>", desc = "OverseerOpen" },
    }
}

return { M }
