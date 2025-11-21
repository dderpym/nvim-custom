-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set

map({ "n" }, "<leader>cp", "", { desc = "CompetiTest" })
map({ "n" }, "<leader>cpt", "<cmd>CompetiTest receive testcases<CR>", { desc = "Get testcases from browser" })
map({ "n" }, "<leader>cpp", "<cmd>CompetiTest receive problems<CR>", { desc = "Get problem from browser" })
map({ "n" }, "<leader>cpf", "<cmd>CompetiTest receive contest<CR>", { desc = "Get problem and testcases from browser" })
map({ "n" }, "<leader>cpr", "<cmd>CompetiTest run<CR>", { desc = "Run problem (auto-compile)" })
map({ "n" }, "<leader>cpm", "<cmd>CompetiTest run_no_compile<CR>", { desc = "Run problem (manual-compile)" })

map({ "n" }, "<leader>r", "<cmd>:RunCode<CR>", { noremap = true, silent = false })
map({ "n" }, "<leader>rf", "<cmd>:RunFile<CR>", { noremap = true, silent = false })
map({ "n" }, "<leader>rft", "<cmd>:RunFile tab<CR>", { noremap = true, silent = false })
map({ "n" }, "<leader>rp", "<cmd>:RunProject<CR>", { noremap = true, silent = false })
map({ "n" }, "<leader>rc", "<cmd>:RunClose<CR>", { noremap = true, silent = false })
map({ "n" }, "<leader>crf", "<cmd>:CRFiletype<CR>", { noremap = true, silent = false })
map({ "n" }, "<leader>crp", "<cmd>:CRProjects<CR>", { noremap = true, silent = false })

map({ "n" }, "<leader>crp", "", {})
