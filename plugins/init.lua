return {
  override = {
    ["hrsh7th/nvim-cmp"] = {
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
  ["goolord/alpha-nvim"] = {
    disable = false,
    config = function()
      require "custom.plugins.alpha"
    end,
  }, -- enables dashboard
  ["nvim-telescope/telescope.nvim"] = {},
  ["rafamadriz/friendly-snippets"] = {
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },

  --QOL
  ["max397574/better-escape.nvim"] = {
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
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

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- code formatting, linting etc
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require("custom.plugins.null-ls").setup()
    end,
  },
  ["tzachar/cmp-tabnine"] = {
    after = "nvim-cmp",
    run = "./install.sh",
    config = function()
      require "custom.plugins.tabnine"
    end,
  },

  ["kdheepak/lazygit.nvim"] = {},

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

  ["themaxmarchuk/tailwindcss-colors.nvim"] = {
    config = function()
      require "custom.plugins.tailwindcss-colors"
    end,
  },
}
