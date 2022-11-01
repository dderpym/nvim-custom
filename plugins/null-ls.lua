local loaded, null_ls = pcall(require, "null-ls")
if not loaded then
  return
end

local builtin = null_ls.builtins

local sources = {
  --source control
  builtin.code_actions.gitsigns,
  builtin.diagnostics.actionlint,
  builtin.diagnostics.commitlint,

  -- webdev stuff
  builtin.formatting.deno_fmt,
  builtin.formatting.prettier.with { filetypes = { "html", "markdown", "css" } },
  -- builtin.diagnostics.eslint_d,
  builtin.code_actions.eslint_d,

  --text
  builtin.diagnostics.codespell,
  builtin.diagnostics.alex,

  --lua
  builtin.formatting.stylua,

  -- Shell
  builtin.formatting.shfmt,
  builtin.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

  -- cpp
  builtin.formatting.clang_format,
  builtin.diagnostics.cppcheck,

  -- rust
  builtin.formatting.rustfmt,

  -- go
  builtin.formatting.gofmt,
  builtin.diagnostics.golangci_lint,

  -- java
  builtin.diagnostics.checkstyle,

  --python
  builtin.formatting.fprettify,
  builtin.diagnostics.pylint,
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local on_attach = function(client, bufnr)
  if client.supports_method "textDocument/formatting" then
    vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format { bufnr = bufnr }
      end,
    })
  end
end

local M = {}

M.setup = function()
  null_ls.setup {
    sources = sources,
    on_attach = on_attach,
  }
end

return M
