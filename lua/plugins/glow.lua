local M = {
    "ellisonleao/glow.nvim",
    event = "BufRead",
    config = function ()
        require('glow').setup({
            width_ratio = 0.7,
            height_ratio = 0.7,
        })
    end,
    cmd = "Glow"
}

return { M }
