return {
  {
    "CRAG666/code_runner.nvim",
    config = function()
      require("code_runner").setup({
        mode = "float",
        float = {
          border = "rounded",
        },
        filetype = {
          java = {
            "cd $dir &&",
            "javac $fileName &&",
            "java $fileNameWithoutExt",
          },
          python = "python3 -u",
          typescript = "deno run",
          rust = {
            "cd $dir &&",
            "rustc $fileName &&",
            "$dir/$fileNameWithoutExt",
          },
          c = function(...)
            local c_base = {
              "cd $dir &&",
              "gcc $fileName -o",
              "/tmp/$fileNameWithoutExt",
            }
            local c_exec = {
              "&& /tmp/$fileNameWithoutExt &&",
              "rm /tmp/$fileNameWithoutExt",
            }
            vim.ui.input({ prompt = "Add more args:" }, function(input)
              c_base[4] = input
              vim.print(vim.tbl_extend("force", c_base, c_exec))
              require("code_runner.commands").run_from_fn(vim.list_extend(c_base, c_exec))
            end)
          end,
          cpp = function(...)
            local base = {
              "cd $dir &&",
              "g++ $fileName -o",
              "/tmp/$fileNameWithoutExt",
            }
            local exec = {
              "&& /tmp/$fileNameWithoutExt &&",
              "rm /tmp/$fileNameWithoutExt",
            }
            vim.ui.input({ prompt = "Add more args:" }, function(input)
              base[4] = input
              vim.print(vim.tbl_extend("force", base, exec))
              require("code_runner.commands").run_from_fn(vim.list_extend(base, exec))
            end)
          end,
        },
      })
    end,
    lazy = true,
    cmd = {
      "RunCode",
      "RunFile",
      "RunFile tab",
      "RunProject",
      "RunClose",
      "CRFiletype",
      "CRProjects",
    },
  },
}
