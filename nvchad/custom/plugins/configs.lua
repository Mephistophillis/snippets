local M = {}

-- overriding default plugin configs!
M.treesitter = {
   ensure_installed = {
      "lua",
      "vim",
      "html",
      "css",
      "javascript",
      "typescript",
      "json",
      "toml",
      "markdown",
      "c",
      "bash",
   },
}

M.nvimtree = {
   git = {
      enable = true,
   },
}

local nvim_tree = require("nvim-tree")
nvim_tree.setup({
  view ={
    mappings = {
      list = {
         { key = "ss", action = "split"},
         { key = "vv", action = "vsplit"},
      }
    }
  }
  -- system_open = {
  --   cmd  = "nautilus",
  -- },
})

vim.g.user_emmet_leader_key = ','

return M
