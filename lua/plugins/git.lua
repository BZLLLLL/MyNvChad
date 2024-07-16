local M = {
    'f-person/git-blame.nvim',
    event = "BufRead",
    config = function ()
        require('gitblame').setup {
            --Note how the `gitblame_` prefix is omitted in `setup`
            enabled = true,
        }
    end
}

-- https://github.com/sindrets/diffview.nvim
local N = {
    "sindrets/diffview.nvim",
    event = "BufRead",
}


return { M, N }
