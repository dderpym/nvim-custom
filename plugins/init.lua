return {
  -- code formatting, linting etc
  ["hrsh7th/nvim-cmp"] = {
    override_options = {
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
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = {
      ensure_installed = {
        "lua",
        "typescript",
      },
    },
  },

  ["nvim-tree/nvim-tree.lua"] = {
    override_options = {
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
  ["goolord/alpha-nvim"] = {
    disable = false,
    config = function()
      require "custom.plugins.alpha"
    end,
  }, -- enables dashboard
  ["nvim-telescope/telescope.nvim"] = {},

  --QOL
  ["max397574/better-escape.nvim"] = {
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  ["neovim/pynvim"] = {},
  ["ggandor/lightspeed.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.lightspeed"
    end,
  },
  ["kevinhwang91/nvim-ufo"] = {
    requires = "kevinhwang91/promise-async",
    config = function()
      require "custom.plugins.ufo"
    end,
  },

  --which-key so i can see what keybinds i have
  ["folke/which-key.nvim"] = {
    disable = false,
    module = "which-key",
    keys = { "<leader>", '"', "'", "`" },
    config = function()
      require "plugins.configs.whichkey"
    end,
    setup = function()
      require("core.utils").load_mappings "whichkey"
    end,
  },

  --lua snip custom config
  ["L3MON4D3/LuaSnip"] = {
    config = function()
      require "custom.plugins.luasnip"
    end,
  },

  --language server setup
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "custom.plugins.lspconfig"
    end,
  },
  ["windwp/nvim-ts-autotag"] = {
    config = function()
      require "custom.plugins.autotag"
    end,
  },
  ["danymat/neogen"] = {
    config = function()
      require("neogen").setup {
        enabled = true,
        input_after_comment = true,
      }
    end,
    requires = "nvim-treesitter/nvim-treesitter",
  },

  --null-ls provides formatting and stuff
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require("custom.plugins.null-ls").setup()
    end,
  },

  --ChatGPT integration, also broken on windows (thanks windows)
  -- ["madox2/vim-ai"] = {},
  --Broken on windows, AI completion (it's not that good)
  -- ["tzachar/cmp-tabnine"] = {
  --   after = "nvim-cmp",
  --   run = "powershell ./install.ps1",
  --   config = function()
  --     require "custom.plugins.tabnine"
  --   end,
  -- },

  --lazy git is a fat W
  ["kdheepak/lazygit.nvim"] = {},

  --debugging utility, pain in the ass to set up. setup for c already
  ["mfussenegger/nvim-dap"] = {
    event = "BufReadPre",
    config = function()
      require "custom.plugins.dap"
    end,
  },
  ["rcarriga/nvim-dap-ui"] = {
    after = "nvim-dap",
    config = function()
      require "custom.plugins.dap-ui"
    end,
  },

  --look colors are a pain in the ass
  ["themaxmarchuk/tailwindcss-colors.nvim"] = {
    config = function()
      require "custom.plugins.tailwindcss-colors"
    end,
  },
}
