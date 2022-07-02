return {
  ["tpope/vim-fugitive"] = {},
  ["mattn/emmet-vim"] = {},
  ["dyng/ctrlsf.vim"] = {},
  ["vimwiki/vimwiki"] = {},
  ["kyazdani42/nvim-web-devicons"] = {},
  ["goolord/alpha-nvim"] = {
    disable = false,
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
       require("custom.plugins.null-ls").setup()
    end,
  }
}
