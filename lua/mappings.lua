require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map("<space> <space>", )
-- map("n", "<leader> ", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
-- map('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find  buffers' })
map("n", "<leader>fs", "<cmd> Telescope grep_string<CR>")

-- mappings for menu
map("n", "<C-t>", function()
  require("menu").open "default"
end, {})

-- mouse mappings
map("n", "<RightMouse>", function()
  vim.cmd.exec '"normal! \\<RightMouse>"'

  local options = vim.bo.ft == "NvimTree" and "nvimtree" or "default"
  require("menu").open(options, {mouse = true})
end, {})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
