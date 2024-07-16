local M = {
    'smoka7/hop.nvim',
    lazy = false,
    version = "*",
    config = function()
        -- you can configure Hop the way you like here; see :h hop-config
        require'hop'.setup {
            hint_position = require'hop.hint'.HintPosition.END,
        }
    end,
    keys = {
        { "<A-a>", mode = { "n", "x", "o", "v", "i" }, "<cmd>HopAnywhereMW<CR>", desc = "HopAnywhere" },
        { "<A-s>", mode = { "n", "x", "o", "v", "i" }, "<cmd>HopChar1<CR>", desc = "HopChar1" },
        { "<A-l>", mode = { "n", "x", "o", "v", "i" }, "<cmd>HopLineMW<CR>", desc = "HopLine" },
        { "<A-w>", mode = { "n", "x", "o", "v", "i" }, "<cmd>HopWordMW<CR>", desc = "HopWord" },
    },
}

return { M }
