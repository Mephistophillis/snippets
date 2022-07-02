local null_ls = require "null-ls"
local b = null_ls.builtins

local sources = {

   -- b.formatting.prettierd.with { filetypes = { "html", "markdown", "css" } },
   -- b.formatting.deno_fmt,

   -- Lua
   b.formatting.stylua,
   b.diagnostics.luacheck.with { extra_args = { "--global vim" } },

   -- Shell
   b.formatting.shfmt,
   b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

   -- Eslint
  b.diagnostics.eslint_d.with({
      prefer_local = "node_modules/.bin",
      diagnostics_format = "#{m}"
  }),
  b.code_actions.eslint_d,
  b.formatting.eslint_d,
  -- b.formatting.prettier


  -- b.hover.dictionary
}

local M = {}

M.setup = function()
   null_ls.setup {
      debug = false,
      sources = sources,
      deboune = 250,

      -- format on save
      on_attach = function(client)
         if client.resolved_capabilities.document_formatting then
            vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()"
         end
      end,
   }
end

return M
