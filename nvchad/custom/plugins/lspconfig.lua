local M = {}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require "lspconfig"

   local servers = { "html", "cssls", "bashls", "emmet_ls", "tsserver", "clangd", "eslint" }

   local eslint = {
     lintCommand = "eslint_d -f unix --stdin --stdin-filename ${INPUT}",
     lintStdin = true,
     lintFormats = {"%f:%l:%c: %m"},
     lintIgnoreExitCode = true,
     formatCommand = "eslint_d --fix-to-stdout --stdin --stdin-filename=${INPUT}",
     formatStdin = true
   }

   local function eslint_config_exists()
     local eslintrc = vim.fn.glob(".eslintrc*", 0, 1)

     if not vim.tbl_isempty(eslintrc) then
       return true
     end

     if vim.fn.filereadable("package.json") then
       if vim.fn.json_decode(vim.fn.readfile("package.json"))["eslintConfig"] then
         return true
       end
     end

     return false
   end

   for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
         on_attach = attach,
         capabilities = capabilities,
         root_dir = function()
           if not eslint_config_exists() then
             return nil
           end
           return vim.fn.getcwd()
         end,
         settings = {
           languages = {
             javascript = {eslint},
             javascriptreact = {eslint},
             ["javascript.jsx"] = {eslint},
             typescript = {eslint},
             ["typescript.tsx"] = {eslint},
             typescriptreact = {eslint}
           }
         },
         filetypes = {
           "javascript",
           "javascriptreact",
           "javascript.jsx",
           "typescript",
           "typescript.tsx",
           "typescriptreact"
         },
      }
   end
end

return M
