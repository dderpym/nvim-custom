return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ccls = {
          init_options = {
            cache = {
              directory = ".ccls-cache",
            },
          },
          filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
        },
      },
    },
  },
}
