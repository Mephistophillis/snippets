local M = {}

M.setup_lsp = function(attach, capabilities)
  local lspconfig = require "lspconfig"

  local servers = { "html", "cssls", "bashls", "emmet_ls", "tsserver", "clangd", "eslint" }

  local config = {
    -- disable virtual text
    virtual_text = false,
    -- show signs
    -- signs = {
    --   active = signs,
    -- },
    update_in_insert = true,
    underline = true,
    severity_sort = true,
    -- float = {
    --   focusable = true,
    --   style = "minimal",
    --   border = "rounded",
    --   source = "always",
    --   header = "",
    --   prefix = "",
    -- },
  }

  vim.diagnostic.config(config)

  for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
      on_attach = attach,
      capabilities = capabilities,
    }
  end
end

return M
