local M = {}

local customPlugins = require "custom.plugins"
local customMappings = require "custom.mappings"

M.ui = {
   theme = "onenord",
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

  },

  user = customPlugins,
}

M.mappings = customMappings

return M
