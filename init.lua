local opts = vim.opt

for i, v in pairs(require "custom.opts") do
  print(i, v)
  opts[i] = v
end

print "a"

local default_providers = {
  "python3",
}

for _, provider in ipairs(default_providers) do
  print "b"
  vim.g["loaded_" .. provider .. "_provider"] = nil
end
