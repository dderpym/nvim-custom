-- First read our docs (completely) then check the example_config repo
local M = {}

M.plugins = "custom.plugins"

M.ui = {
  theme = "catppuccin",
  transparency = true,
}

M.options = require "custom.opts"

M.mappings = require "custom.mappings"

return M
