local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options
  --

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  -- {
  --   "williamboman/mason.nvim",
  --   opts = overrides.mason
  -- },

  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   opts = overrides.treesitter,
  -- },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "kdheepak/lazygit.nvim",
    lazy = false,
    config = function ()
      require("custom.configs.lazygit").setup()
    end
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = overrides.telescope,
  },


  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  {
    "tpope/vim-fugitive",
    lazy = false
  },

  {
    "dyng/ctrlsf.vim",
    lazy = false
  },

  {
    "vimwiki/vimwiki",
    lazy = false
  },

  {
    "voldikss/vim-translator",
    lazy = false,
    config = function()
      require ("custom.configs.translate").setup()
    end,
  },

  {
    "MunifTanjim/nui.nvim",
    lazy = false
  },

  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function ()
      require("custom.configs.chatgpt")
    end,
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
  },

  {
    "VonHeikemen/fine-cmdline.nvim",
    lazy = false,
    config = function ()
      require("custom.configs.cmdline")
    end,
    requires = {
      'MunifTanjim/nui.nvim',
    }
  },

  -- {
  --   "anuvyklack/windows.nvim",
  --   lazy = false,
  --   requires = {
  --     "anuvyklack/middleclass",
  --     "anuvyklack/animation.nvim"
  --   },
  --   config = function()
  --     vim.o.winwidth = 10
  --     vim.o.winminwidth = 10
  --     vim.o.equalalways = false
  --     require("windows").setup()
  --   end
  -- },

}

return plugins
