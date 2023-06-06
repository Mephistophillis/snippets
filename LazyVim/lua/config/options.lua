-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local g = vim.g

if vim.fn.has("nvim") and vim.fn.executable("nvr") then
  vim.env.GIT_EDITOR = "nvr -cc split --remote-wait +'set bufhidden=wipe'"
end

-- lazygit settins
g.lazygit_floating_window_winblend = 0.9 -- transparency of floating window
g.lazygit_floating_window_scaling_factor = 0.8 -- scaling factor for floating window
g.lazygit_floating_window_corner_chars = { "╭", "╮", "╰", "╯" } -- customize lazygit popup window corner characters
g.lazygit_floating_window_use_plenary = 1 -- use plenary.nvim to manage floating window if available
g.lazygit_use_neovim_remote = 0 -- fallback to 0 if neovim-remote is not installed

g.lazygit_use_custom_config_file_path = 1 -- config file path is evaluated if this value is 1
g.lazygit_config_file_path = "~/.config/lazygit/config.yml" -- custom config file path
