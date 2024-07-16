-- https://github.com/nvimdev/dashboard-nvim
local M = {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    keys = {
        { "<A-d>", mode = { "n", "x", "o" }, "<cmd>Dashboard<cr>", desc = "Dashboard" },
    },
    config = function()
        local logo = [[]]
        logo = string.rep("\n", 8) .. logo .. "\n\n"
        require('dashboard').setup {
            -- config
            theme = 'doom', --  theme is 'doom' or 'hyper' default is hyper
            hide = {
                -- this is taken care of by lualine
                -- enabling this messes up the actual laststatus setting after loading a file
                header = false,
                statusline = false,
            },
            config = {
                header = vim.split(logo, "\n"),
                center = {
                    { action = "ene | startinsert", desc = " New File", icon = " ", icon_hl = 'Title', key = "n" },
                    { action = "CopilotChat", desc = " Copilot Chat", icon = " ", icon_hl = 'Title', key = "c" },
                    { action = "Lspsaga term_toggle", desc = " Terminal", icon = " ", icon_hl = 'Title', key = "t" },
                    { action = "Telescope oldfiles", desc = " Recent Files", icon = " ", icon_hl = 'Title', key = "r" },
                    { action = "Telescope find_files", desc = " Find File", icon = " ", icon_hl = 'Title', key = "f" },
                    { action = "Telescope live_grep", desc = " Find Text", icon = " ", icon_hl = 'Title', key = "g" },
                    { action = "Telescope projects", desc = " Find Projects", icon = "󰆧 ", icon_hl = 'Title', key = "p" },
                    { action = "Lazy", desc = " Lazy", icon = "󰒲 ", icon_hl = 'Title', key = "l" },
                    { action = "Nvdash", desc = " Nvdash", icon = " ", icon_hl = 'Title', key = "d" },
                    { action = "qa", desc = " Quit", icon = " ", icon_hl = 'Title', key = "q" },
                    {
                        icon = '',
                        icon_hl = 'group',
                        desc = 'description',
                        desc_hl = 'group',
                        key = 'shortcut key in dashboard buffer not keymap !!',
                        key_hl = 'group',
                        key_format = ' [%s]', -- `%s` will be substituted with value of `key`
                        action = '',
                    },
                },
                -- footer = {},
                footer = function()
                    local stats = require("lazy").stats()
                    local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
                    return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
                end,
            },
        }
    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'} }
}

return { M }
