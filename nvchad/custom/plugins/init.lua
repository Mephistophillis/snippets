return {

  {
    "williamboman/nvim-lsp-installer",
  },

   {
      "nvim-telescope/telescope-media-files.nvim",
      after = "telescope.nvim",
      config = function()
         require("telescope").setup {
            extensions = {
               media_files = {
                  filetypes = { "png", "webp", "jpg", "jpeg" },
               },
               -- fd is needed
            },
         }
         require("telescope").load_extension "media_files"
      end,
   },

   { "tpope/vim-fugitive" },

   { "mattn/emmet-vim" },

   { "dyng/ctrlsf.vim" },

 }
