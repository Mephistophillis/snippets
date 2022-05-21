local M = {}

-- map("n", "<leader>abd", ":bufdo bd<CR>")

M.custom = {
  n = {
    ["<C-d>"] = {":q <CR>", "Close window"},
    ["<leader>abd"] = {"<cmd> bufdo bd <CR>", "All buffers down"},
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
    ["<leader>gc"] = {":G ", "git line"},
    ["<leader>gh"] = {"<cmd> diffget //2 <CR>", "diffget left"},
    ["<leader>gl"] = {"<cmd> diffget //3 <CR>", "diffget right"},
  }
}

return M
