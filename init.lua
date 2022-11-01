local opts = vim.opt

for i, v in pairs(require "custom.opts") do
  opts[i] = v
end
