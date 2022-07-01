local M = {}

local customPlugins = require "custom.plugins"
local customMappings = require "custom.mappings"
local override = require "custom.override"

M.ui = {
   theme = "onenord",
   -- transparency = true,
}

M.plugins = {

  options = {

    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig",
    },

    statusline = {
      separator_style = "round",
    },
  },

  override = {
    ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
  },

  user = customPlugins,
}

M.mappings = customMappings

return M
