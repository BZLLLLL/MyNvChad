local M = {
    {
        'nvim-telescope/telescope.nvim',
        lazy = false,
        dependencies = {
            "ahmedkhalf/project.nvim",
            "tsakirist/telescope-lazy.nvim",
        },
        opts = function()
            return require "configs.telescope"
        end,
        config = function(_, opts)
            dofile(vim.g.base46_cache .. "telescope")
            local telescope = require "telescope"
            telescope.setup(opts)
            -- load extensions
            for _, ext in ipairs(opts.extensions_list) do
                telescope.load_extension(ext)
            end
        end,
        keys = {
            { "<leader>fp", mode = { "n", "x", "o" }, function() require'telescope'.extensions.projects.projects{} end, desc = "projects" },
            { "<leader>fl", mode = { "n", "x", "o" }, function () require'telescope'.extensions.lazy.lazy{} end, desc = "lazy" },
            { "<leader>fk", mode = { "n", "x", "o"}, function() require'telescope.builtin'.keymaps{} end, desc = "keymaps" },
        },
    }
}

return { M }
