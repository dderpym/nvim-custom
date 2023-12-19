return {
  --reconfigure base plugins
  {
    "hrsh7th/nvim-cmp",
    opts = {
      sources = {
        { name = "codeium" },
         { name = "nvim_lsp" },
         { name = "luasnip" },
         { name = "buffer" },
         { name = "nvim_lua" },
         { name = "path" },
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua",
        "typescript",
      },
    },
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = {
        enable = true,
      },
      view = {
        adaptive_size = true,
      },
      renderer = {
        highlight_git = true,
        highlight_modified = "name",
        indent_markers = {
          enable = true,
        },
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = "williamboman/mason.nvim",
    config = function()
      require("mason-lspconfig").setup {
        automatic_installation = true,
      }
    end,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "jose-elias-alvarez/null-ls.nvim",
    },
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("mason-null-ls").setup {
        automatic_installation = true,
      }
    end,
  },
  --null-ls provides formatting and stuff
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require "custom.configs.null-ls"
    end,
  },
  --QOL
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "ggandor/lightspeed.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "custom.configs.lightspeed"
    end,
  },
  {
    "kevinhwang91/nvim-ufo",
    event = "BufReadPost",
    dependencies = {
      "kevinhwang91/promise-async",
    },
    config = function()
      require "custom.configs.ufo"
    end,
  },

  --lua snip custom config
  {
    "L3MON4D3/LuaSnip",
    config = function()
      require "custom.configs.luasnip"
    end,
    dependencies = {
      "rafamadriz/friendly-snippets",
      "danymat/neogen",
    },
  },
  {
    "danymat/neogen",
    config = function()
      require("neogen").setup {
        enabled = true,
        input_after_comment = true,
      }
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
  },

  --language server setup
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "mason-lspconfig.nvim",
    },
    config = function()
      require "custom.configs.lspconfig"
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    ft = require "custom.configs.webft",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  { --we need to hop on the AI bandwagon
    "Exafunction/codeium.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    event = "BufEnter",
    config = function()
      require "custom.configs.codeium"
    end,
  },

  --lazy git is a fat W
  { "kdheepak/lazygit.nvim", cmd = "LazyGit" },

  --look colors are a pain in the ass
  {
    "themaxmarchuk/tailwindcss-colors.nvim",
    ft = require "custom.configs.webft",
    config = function()
      require "custom.configs.tailwindcss-colors"
    end,
  },
}
