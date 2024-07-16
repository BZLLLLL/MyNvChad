-- https://nvimdev.github.io/lspsaga/breadcrumbs/
-- return {}
local M = {
    'nvimdev/lspsaga.nvim',
    event = "BufRead",
    config = function()
        require('lspsaga').setup({
            symbol_in_winbar = {
                enable = false,
            }
        })
    end,
    dependencies = {
        'nvim-treesitter/nvim-treesitter', -- optional
        'nvim-tree/nvim-web-devicons',     -- optional
    },
    keys = {
        { "<A-p>", mode = { "n", "x", "o" }, "<cmd>Lspsaga peek_definition<cr>", desc = "lspsaga peek_definition" },
        { "<A-f>", mode = { "n", "x", "o" }, "<cmd>Lspsaga finder<cr>", desc = "lspsaga lsp_finder" },
        { "<A-o>", mode = { "n", "x", "o" }, "<cmd>Lspsaga outline<cr>", desc = "lspsaga outline" },
        { "<leader>lr", mode = { "n", "x", "o" }, "<cmd>Lspsaga rename<cr>", desc = "lspsaga rename" },
        -- { "<leader>ld", mode = { "n", "x", "o" }, "<cmd>Lspsaga preview_definition<cr>", desc = "lspsaga preview_definition" },
        { "<leader>lh", mode = { "n", "x", "o" }, "<cmd>Lspsaga hover_doc<cr>", desc = "lspsaga hover_doc" },
        -- { "<leader>ls", mode = { "n", "x", "o" }, "<cmd>Lspsaga signature_help<cr>", desc = "lspsaga signature_help" },
        { "<leader>lc", mode = { "n", "x", "o" }, "<cmd>Lspsaga code_action<cr>", desc = "lspsaga code_action" },
        -- { "<leader>lca", mode = { "n", "x", "o" }, "<cmd>Lspsaga range_code_action<cr>", desc = "lspsaga range_code_action" },
        { "<leader>lds", mode = { "n", "x", "o" }, "<cmd>Lspsaga show_line_diagnostics<cr>", desc = "lspsaga show_line_diagnostics" },
        -- { "<A-t>", mode = { "n", "x", "o" }, "<cmd>Lspsaga term_toggle<cr>", desc = "lspsaga term_toggle" },
        -- { "<leader>lQ", mode = { "n", "x", "o" }, "<cmd>Lspsaga close_floaterm<cr>", desc = "lspsaga close_floaterm" },
        { "<leader>lda", mode = { "n", "x", "o" }, "<cmd>Lspsaga show_buf_diagnostics<cr>", desc = "lspsaga show_buf_diagnostics" },
        { "<leader>ldn", mode = { "n", "x", "o" }, "<cmd>Lspsaga diagnostic_jump_next<cr>", desc = "lspsaga diagnostic_jump_next" },
        { "<leader>ldp", mode = { "n", "x", "o" }, "<cmd>Lspsaga diagnostic_jump_prev<cr>", desc = "lspsaga diagnostic_jump_prev" },
    }
}

return { M }
