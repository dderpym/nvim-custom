local defaults = require "plugins.configs.lspconfig"

local on_attach = defaults.on_attach
local capabilities = defaults.capabilities

---@diagnostic disable-next-line: different-requires
local lspconfig = require "lspconfig"

local servers = { "bashls", "clangd", "cssls", "gopls", "pyright", "rust_analyzer", "html", "tailwindcss", "tsserver" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
