---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "onenord",
  theme_toggle = { "onenord", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  transparency = false,

  nvdash = {
    load_on_startup = true,

    header = {
      "░░░░░░░░░▄░░░░░░░░░░░░░░▄░░",
      "░░░░░░░░▌▒█░░░░░░░░░░░▄▀▒▌░",
      "░░░░░░░░▌▒▒█░░░░░░░░▄▀▒▒▒▐░",
      "░░░░░░░▐▄▀▒▒▀▀▀▀▄▄▄▀▒▒▒▒▒▐░",
      "░░░░░▄▄▀▒░▒▒▒▒▒▒▒▒▒█▒▒▄█▒▐░",
      "░░░▄▀▒▒▒░░░▒▒▒░░░▒▒▒▀██▀▒▌░",
      "░░▐▒▒▒▄▄▒▒▒▒░░░▒▒▒▒▒▒▒▀▄▐▒░",
      "░░▌░░▌█▀▒▒▒▒▒▄▀█▄▒▒▒▒▒▒▒█▒░",
      "░▐░░░▒▒▒▒▒▒▒▒▌██▀▒▒░░░▒▒▒▀▄",
      "░▌░▒▄██▄▒▒▒▒▒▒▒▒▒░░░░░░▒▒▒▐",
      "▌▒▀▐▄█▄█▌▄░▀▒▒░░░░░░░░░░▒▒▌",
    }
  },

  statusline = {
    theme = "minimal"
  }

}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
