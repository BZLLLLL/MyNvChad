-- https://github.com/Bekaboo/dropbar.nvim
-- https://github.com/nvim-telescope/telescope-fzf-native
local M = {
    'Bekaboo/dropbar.nvim',
    event = "BufRead",
    -- optional, but required for fuzzy finder support
    dependencies = {
        'nvim-telescope/telescope-fzf-native.nvim'
    }
}

return { M }
