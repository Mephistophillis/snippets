local g = vim.g

local M = {}

M.setup = function()
  g.translator_target_lang = 'ru'
  g.translator_source_lang = 'auto'
  g.translator_default_engines = 'google'
end

return M
