-- https://github.com/github/copilot.vim
-- copilot.vim
local M = {
    "github/copilot.vim",
    lazy = false,
}

-- https://github.com/CopilotC-Nvim/CopilotChat.nvim
local N = {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    lazy = false,
    dependencies = {
        { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
    },
    opts = {
        debug = false, -- Enable debugging
        -- See Configuration section for rest
        -- default window options
        window = {
            layout = 'float', -- 'vertical', 'horizontal', 'float', 'replace'
            width = 0.8, -- fractional width of parent, or absolute width in columns when > 1
            height = 0.7, -- fractional height of parent, or absolute height in rows when > 1
        },
    },
    -- See Commands section for default commands if you want to lazy load on them
    keys = {
        { "<leader>cp", mode = { "n", "x", "o", "v" }, '<CMD>CopilotChat<CR>', desc = "Copilot Chat" },
    },
}

return { M, N }
