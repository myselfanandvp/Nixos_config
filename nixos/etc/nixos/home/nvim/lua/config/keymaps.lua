-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local Util = require("lazyvim.util")

vim.keymap.set("n", "<Esc>/", function()
  Util.terminal(nil, { cwd = Util.root() })
end, { desc = "Toggle Terminal" })

vim.keymap.set("t", "<Esc>/", function()
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-\\><C-n>", true, false, true), "n", false)
  Util.terminal(nil, { cwd = Util.root() })
end, { desc = "Toggle Terminal" })
