-- local nvimtree_api = require('nvim-tree.api')
---@type MappingsTable
local M = {}

-- more keybinds!

M.custom = {
  n = {
    ["<C-d>w"] = {":q <CR>", "Close window"},
    ["<leader>abd"] = {"<cmd> bufdo bd | Nvdash <CR>", "All buffers down"},
    ["<Esc>"] = {"<cmd> noh <CR>", "restore search"},
    ["<leader>tn"] = {":tabnew <CR>", "open new tab"},
    ["<leader>tk"] = {":tabn <CR>", "next tab"},
    ["<leader>tj"] = {":tabp <CR>", "previous tab"},
    ["<leader>tx"] = {":tabclose <CR>", "close tab"},
  }
}

M.CtrlSF = {
  n = {
    ["<C-f>f"] = {":CtrlSF ", "CtrlSF search"},
    ["<C-f>0"] = {"<cmd> CtrlSF <CR>", "CtrlSF open"},
    ["<C-f>t"] = {"<cmd> CtrlSF <CR>", "CtrlSF toggle"},
    ["<C-f>u"] = {"<cmd> CtrlSF <CR>", "CtrlSF update"},
  }
}

M.figitive = {
  n = {
    ["<leader>gc"] = {":G", "git line"},
    ["<leader>go"] = {"<cmd> G <CR> | <C-w>L<CR>", "git open"},
    ["<leader>gh"] = {"<cmd> diffget //2 <CR>", "diffget left"},
    ["<leader>gl"] = {"<cmd> diffget //3 <CR>", "diffget right"},
  }
}

M.translate = {
  n = {
    ["<leader>tr"] = {":TranslateW <CR>", "translate window"},
  },
  v = {
    ["<leader>tr"] = {":TranslateW <CR>", "translate window"},
  },
}

M.cmdline = {
  n = {
    [":"] = {"<cmd>FineCmdline<CR>", "open cmdline"},
    [";"] = {"<cmd>FineCmdline<CR>", "open cmdline"},
  },
  v = {
    [":"] = {"<cmd>FineCmdline '<,'> <CR>", "open cmdline"},
    [";"] = {"<cmd>FineCmdline '<,'> <CR>", "open cmdline"},
  }
}

M.lazygit = {
  n  = {
    ["<leader>lg"] = {"<cmd>LazyGit<CR>", "open LazyGit"},
  }
}

return M
