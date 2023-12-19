local M = {}

M.disabled = {
  n = {
    ["<leader>ra"] = "",
  },
}

M.cmp = {
  n = {
    ["<C-Space>"] = {
      function()
        require("cmp").mapping.complete()
      end,
    },
  },
}

M.lsp = {
  n = {
    ["<leader>r"] = {
      function()
        require("nvchad_ui.renamer").open()
      end,
      "lsp rename",
    },
  },
}

M.telescope = {
  n = {
    ["<leader><leader>"] = { "<cmd> Telescope<CR>", "Open telescope" },
  },
}

M.lazygit = {
  n = {
    ["<leader>g"] = {
      "<cmd> LazyGit<CR>",
      "Open lazygit",
    },
  },
}

M.luasnip = {
  i = {
    ["<C-j>"] = {
      function()
        require("luasnip").jump(1)
      end,
      "Hop to next parameter (luasnip)",
    },
    ["<C-k>"] = {
      function()
        require("luasnip").jump(-1)
      end,
      "Hop to previous parameter (luasnip)",
    },
  },
  s = {
    ["<C-j>"] = {
      function()
        require("luasnip").jump(1)
      end,
      "Hop to next parameter (luasnip)",
    },
    ["<C-k>"] = {
      function()
        require("luasnip").jump(-1)
      end,
      "Hop to previous parameter (luasnip)",
    },
  },
}

return M
