vim.keymap.set(
  "t",
  "<C-x>",
  vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true),
  { desc = "Escape terminal mode" }
)
