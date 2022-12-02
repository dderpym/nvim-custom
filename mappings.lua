local M = {}

M.disabled = {
  n = {
    ["<leader>ra"] = "",
  },
}

M.lsp = {
  n = {
    ["<leader>rr"] = {
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

M.dap = {
  n = {
    ["<leader>bp"] = {
      function()
        require("dap").toggle_breakpoint()
      end,
      "Toggle breakpoint",
    },
    ["<leader>bc"] = {
      function()
        require("dap").set_breakpoint(vim.fn.input "[Condition] > ")
      end,
      "Set conditional breakpoint",
    },
    ["<leader>db"] = {
      function()
        require("dap").continue()
      end,
      "Continue/start debugging",
    },
    ["<leader>dui"] = {
      function()
        require("dapui").toggle()
      end,
      "Toggle dap ui",
    },
    ["<leader>si"] = {
      function()
        require("dap").step_into()
      end,
      "Step over",
    },
    ["<leader>so"] = {
      function()
        require("dap").step_over()
      end,
      "Step over",
    },
    ["<leader>sb"] = {
      function()
        require("dap").step_back()
      end,
    },
  },
}

M.ufo = {
  n = {
    ["<leader>fao"] = {
      function()
        require("ufo").openAllFolds()
      end,
      "Open all folds",
    },
    ["<leader>fac"] = {
      function()
        require("ufo").closeAllFolds()
      end,
      "Close all folds",
    },
  },
}

M.luasnip = {
  i = {
    ["<c-j>"] = {
      function()
        require("luasnip").jump(1)
      end,
      "Hop to next parameter (luasnip)",
    },
    ["<c-k>"] = {
      function()
        require("luasnip").jump(-1)
      end,
      "Hop to previous parameter (luasnip)",
    },
  },
  s = {
    ["<c-j>"] = {
      function()
        require("luasnip").jump(1)
      end,
      "Hop to next parameter (luasnip)",
    },
    ["<c-k>"] = {
      function()
        require("luasnip").jump(-1)
      end,
      "Hop to previous parameter (luasnip)",
    },
  },
}

return M
