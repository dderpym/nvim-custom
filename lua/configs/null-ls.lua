local null_ls = require "null-ls"

local builtin = null_ls.builtins

local sources = {
  --source control
  builtin.code_actions.gitsigns,
  builtin.diagnostics.commitlint,

  builtin.code_actions.eslint_d,

  builtin.formatting.prettierd,

  --text
  builtin.diagnostics.codespell,

  --lua
  builtin.formatting.stylua,

  -- Shell
  builtin.formatting.shfmt,

  -- cpp
  builtin.formatting.clang_format.with { extra_args = { "--style='Chromium'" } },

  -- rust
  builtin.formatting.rustfmt,

  -- go
  builtin.formatting.gofmt,
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local on_attach = function(client, bufnr)
  if client.supports_method "textDocument/formatting" then
    vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format { bufnr = bufnr, async = true }
      end,
    })
  end
end

null_ls.setup {
  sources = sources,
  on_attach = on_attach,
}
