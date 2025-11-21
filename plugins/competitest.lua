return {
  "xeluxee/competitest.nvim",
  dependencies = "MunifTanjim/nui.nvim",
  config = function()
    require("competitest").setup()
  end,
  lazy = true,
  cmd = { "CompetiTest" },
}
