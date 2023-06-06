-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

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

-- nvterm mappings
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

map("i", "jk", "<Esc>")

-- chatgpt mappings
map("n", "<leader>cc", "<cmd>ChatGPT<CR>", { desc = "ChatGPT" })
map("n", "<leader>ca", "<cmd>ChatGPTActAs<CR>", { desc = "ChatGPT Act as ..." })
map("n", "<leader>ce", "<cmd>ChatGPTEditWithInstructions<CR>", { desc = "ChatGPT Edit with instructions" })
map("n", "<leader>crd", "<cmd>ChatGPTRun docstring<CR>", { desc = "ChatGPT docstring" })
map("v", "<leader>crd", "<cmd>ChatGPTRun docstring<CR>", { desc = "ChatGPT docstring" })
map("n", "<leader>cre", "<cmd>ChatGPTRun explain_code<CR>", { desc = "ChatGPT explain code" })
map("v", "<leader>cre", "<cmd>ChatGPTRun explain_code<CR>", { desc = "ChatGPT explain code" })
map("n", "<leader>crr", "<cmd>ChatGPTRun code_readability_analysis<CR>", { desc = "ChatGPT code readability analysis" })
map("v", "<leader>crr", "<cmd>ChatGPTRun code_readability_analysis<CR>", { desc = "ChatGPT code readability analysis" })
map("v", "<leader>ctr", "<cmd>ChatGPTRun translate russian<CR>", { desc = "ChatGPT translate to Russian" })
map("v", "<leader>cte", "<cmd>ChatGPTRun translate english<CR>", { desc = "ChatGPT translate to English" })
