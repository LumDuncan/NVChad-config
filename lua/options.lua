require "nvchad.options"

-- add yours here!
--
--

vim.cmd "hi Function gui=italic"
vim.cmd "hi Keyword gui=italic"
vim.cmd [[autocmd FileType * set formatoptions-=ro]]

vim.opt.relativenumber = true

vim.opt.colorcolumn = "80"

local autocmd = vim.api.nvim_create_autocmd

autocmd("VimEnter", {
  command = ":silent !kitty @ set-spacing padding=0 margin=0",
})

autocmd("VimLeavePre", {
  command = ":silent !kitty @ set-spacing padding=20 margin=10",
})

-- add format on save
autocmd("BufWritePre", {
  pattern = { "*.c", "*.h", "*.cpp", "*.hpp", "*.json", "*.py", "*.lua", "*.sh" },
  command = "lua vim.lsp.buf.format()",
})
-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
