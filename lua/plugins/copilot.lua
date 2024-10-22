-- Add the following blocks in to your custom/plugins.lua file to install the plugins
--
local overrides = require("configs.copilot")

local plugins = {
  -- ... all your other plugins ...
   {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter",
    opts = overrides.copilot
  },

  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      {
        "zbirenbaum/copilot-cmp",
        config = function()
          require("copilot_cmp").setup()
        end,
      },
    },
    opts = {
      sources = {
        { name = "nvim_lsp", group_index = 2 },
        { name = "copilot",  group_index = 2 },
        { name = "luasnip",  group_index = 2 },
        { name = "buffer",   group_index = 2 },
        { name = "nvim_lua", group_index = 2 },
        { name = "path",     group_index = 2 },
      },
    },
  },
}

return plugins
