local opts = vim.opt

for i, v in pairs(require "opts") do
  opts[i] = v
end

local default_providers = {
  "python3",
}

for _, provider in ipairs(default_providers) do
  vim.g["loaded_" .. provider .. "_provider"] = nil
end

--WSL Compatibility, comment out if you aren't running on WSL
-- vim.g["clipboard"] = {
--   ["name"] = "WslClipboard",
--   ["copy"] = {
--     ["+"] = "clip.exe",
--     ["*"] = "clip.exe",
--   },
--   ["paste"] = {
--     ["+"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
--     ["*"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
--   },
--   ["cache_enabled"] = 0,
-- }
