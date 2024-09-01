local defaults = require "nvchad.configs.lspconfig"

local on_attach = defaults.on_attach
local capabilities = defaults.capabilities

---@diagnostic disable-next-line: different-requires
local lspconfig = require "lspconfig"

local servers = {
  "bashls",
  "ccls",
  "clangd",
  "cssls",
  "gopls",
  "pyright",
  "rust_analyzer",
  "hls",
  "html",
  "lua_ls",
  "tsserver",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig["tailwindcss"].setup {
  on_attach = function(client, bufnr)
    on_attach(client, bufnr)
    require("tailwindcss-colors").buf_attach(bufnr)
  end,
  capabilities = capabilities,
}
