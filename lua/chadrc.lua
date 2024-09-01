-- First read our docs (completely) then check the example_config repo
local M = {}

-- M.plugins = "plugins"

M.ui = {
  theme = "catppuccin",
  transparency = true,
}

M.options = require "opts"

-- M.mappings = require "mappings"

return M
