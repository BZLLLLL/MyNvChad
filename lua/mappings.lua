require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Move in different window using the <ctrl> hjkl keys
map("n", "<A-Left>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<A-Down>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<A-Up>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<A-Right>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- Save
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- Quit
map("n", "q", "<cmd>q<cr>", { desc = "Quit" })
map("n", "Q", "<cmd>qa!<cr>", { desc = "Quit(Force)" })

-- copy in ssh
map('v', '<C-c>', require('osc52').copy_visual, { desc = "Copy to clipboard" })

-- Lazy
map("n", "<leader>la", "<cmd>Lazy<cr>", { desc = "Lazy plugins" })

-- Terminal
map({ "n", "x", "o", "t" }, "<A-i>", "<cmd>Lspsaga term_toggle<cr>", { desc = "lspsaga Float Terminal" })

-- spectre
map('n', '<leader>ss', '<cmd>lua require("spectre").toggle()<CR>', {
    desc = "Toggle Spectre"
})
map('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
    desc = "Search current word"
})
map('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
    desc = "Search current word"
})
map('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
    desc = "Search on current file"
})

-- Move current line down
map("n", "<A-j>", ":m .+1<CR>==")

-- Move current line up
map("n", "<A-k>", ":m .-2<CR>==")

-- Move in different Tab
map({ "i", "x", "n", "s", "t" }, "<S-Up>", "<cmd>tabnew<cr>", { desc = "Create New Tab" })
map({ "i", "x", "n", "s", "t" }, "<S-Left>", "<cmd>tabnext<cr>", { desc = "Go To Previous Tab" })
map({ "i", "x", "n", "s", "t" }, "<S-Right>", "<cmd>tabnext<cr>", { desc = "Go To Next Tab" })
map({ "i", "x", "n", "s", "t" }, "<S-Down>", "<cmd>tabclose<cr>", { desc = "Close Tab" })
