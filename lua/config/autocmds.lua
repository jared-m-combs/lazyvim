local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- don't show line numbers on terminal and start in insert mode
autocmd("TermOpen", {
  group = augroup("terminal", { clear = true }),
  command = "setlocal nonumber norelativenumber nobuflisted | startinsert",
})
