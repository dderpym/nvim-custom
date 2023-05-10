return {
  --reconfigure base plugins
  {"hrsh7th/nvim-cmp",
    opts = {
      sources = {
        { name = "luasnip" },
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "nvim_lua" },
        { name = "path" },
        { name = "cmp_tabnine" },
      },
    },
  },
  {"nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua",
        "typescript",
      },
    },
  },
  {"nvim-tree/nvim-tree.lua",
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
  --QOL
  {"max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {"ggandor/lightspeed.nvim",
    lazy=false,
    config = function()
      require "custom.configs.lightspeed"
    end,
  },
  {"kevinhwang91/nvim-ufo",
    dependencies = {
      "kevinhwang91/promise-async"
    },
    config = function()
      require "custom.configs.ufo"
    end,
  },

  --lua snip custom config
  {"L3MON4D3/LuaSnip",
    config = function()
      require "custom.configs.luasnip"
    end,
  },

  --language server setup
  {"neovim/nvim-lspconfig",
    config = function()
      require "custom.configs.lspconfig"
    end,
  },
  {"windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {"danymat/neogen",
    config = function()
      require("neogen").setup {
        enabled = true,
        input_after_comment = true,
      }
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter"
    },
  },

  --null-ls provides formatting and stuff
  {"jose-elias-alvarez/null-ls.nvim",
    config = function()
      require("custom.configs.null-ls").setup()
    end,
  },

  -- {"neovim/pynvim",},
  -- --ChatGPT integration, also broken on windows (thanks windows)
  -- {"madox2/vim-ai",
  --   config = function()
  --     require "custom.configs.vimai"
  --   end,
  -- },

  --lazy git is a fat W
  {"kdheepak/lazygit.nvim",
    cmd = "LazyGit"
  },

  --look colors are a pain in the ass
  {"themaxmarchuk/tailwindcss-colors.nvim",
    config = function()
      require "custom.configs.tailwindcss-colors"
    end,
  },
}
