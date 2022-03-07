local M = {}

local plugin_conf = require "custom.plugins.configs"
local userPlugins = require "custom.plugins"

M.plugins = {
   status = {
      colorizer = true,
      alpha = true
   },

   options = {
      lspconfig = { setup_lspconf = "custom.plugins.lspconfig",
      },
   },

   default_plugin_config_replace = {
      nvim_treesitter = plugin_conf.treesitter,
      nvim_tree = plugin_conf.nvimtree,
   },

   install = userPlugins,
}

M.ui = {
   theme = "palenight",
}

M.mappings = {
  custom = {
    text_search = {
      search = "<C-f> f",
      open = "<C-f> o",
      toggle = "<C-f> t",
      update = "<C-f> u",
    },

    git = {
      git_command = "<leader>gc",
      diff_get_left = "<leader>gh",
      diff_get_right = "<leader>gl",
    }, 

    nvimtree_inside = {
      open = "o",
      open_split = "ss",
      open_vsplit = "vv",
      open_newtab = "<C-t>",
      preview = "<Tab>",
      add = "a",
      rename = "r",
      delete = "d",
      toggle_hidden = "I",
      toggle_dotfiles = "H",
      refresh_tree = "R",
      file_info = "<C-k>",
    }
  },
}

return M
