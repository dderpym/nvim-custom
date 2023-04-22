local opts = vim.opt

for i, v in pairs(require "custom.opts") do
  opts[i] = v
end

local default_providers = {
  "python3",
}

for _, provider in ipairs(default_providers) do
  vim.g["loaded_" .. provider .. "_provider"] = nil
end
