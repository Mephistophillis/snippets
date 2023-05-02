-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "<A-i>", function()
  require("nvterm.terminal").toggle("float")
end, { desc = "Toggle floating terminal" })

map("n", "<A-h>", function()
  require("nvterm.terminal").toggle("horizontal")
end, { desc = "Toggle horizontal terminal" })

map("n", "<A-v>", function()
  require("nvterm.terminal").toggle("vertical")
end, { desc = "Toggle vertical terminal" })

map("t", "<A-i>", function()
  require("nvterm.terminal").toggle("float")
end, { desc = "Toggle floating terminal" })

map("t", "<A-h>", function()
  require("nvterm.terminal").toggle("horizontal")
end, { desc = "Toggle horizontal terminal" })

map("t", "<A-v>", function()
  require("nvterm.terminal").toggle("vertical")
end, { desc = "Toggle vertical terminal" })
