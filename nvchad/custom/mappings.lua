local map = require("core.utils").map

-- telescope
map("n", "<leader>fp", ":Telescope media_files <CR>")
map("n", "<leader>te", ":Telescope <CR>")

-- basic usage
map("n", "<C-d>", ":q <CR>")

-- tabs
map("n", "<leader>1", "1gt")
map("n", "<leader>2", "2gt")
map("n", "<leader>3", "3gt")
map("n", "<leader>4", "4gt")
map("n", "<leader>5", "5gt")
map("n", "<leader>6", "6gt")
map("n", "<leader>7", "7gt")
map("n", "<leader>8", "8gt")
map("n", "<leader>9", "9gt")

-- search text
map("n", "<C-f>f", ":CtrlSF")
map("n", "<C-f>o", ":CtrlSFOpen<CR>")
map("n", "<C-f>t", ":CtrlSFToggle<CR>")
map("n", "<C-f>u", ":CtrlSFUpdate<CR>")

-- git
map("n", "<leader>gc", ":G ")
map("n", "<leader>gh", ": diffget //2<CR>")
map("n", "<leader>gl", ": diffget //3<CR>")
