-- Options
local opt = vim.opt

-- Indenting
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 2
opt.softtabstop = 2

opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"

opt.clipboard = "unnamedplus"

-- Numbers
opt.number = true
opt.numberwidth = 2
opt.ruler = false

-- disable nvim intro
opt.shortmess:append "sI"

-- opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
-- opt.termguicolors = true
opt.timeoutlen = 400
opt.undofile = true

-- keymaps
vim.keymap.set("n", "<C-s>", "<cmd> w <CR>")
vim.keymap.set("i", "jk", "<ESC>")


