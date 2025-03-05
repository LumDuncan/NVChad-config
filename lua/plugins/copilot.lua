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
    config = function(_, opts)
      vim.opt.completeopt = {'menu','menuone','noselect','noinsert'}
      local cmp = require "cmp"
      opts.sources = {
        { name = "nvim_lsp", group_index = 2 },
        { name = "copilot",  group_index = 2 },
        { name = "luasnip",  group_index = 2 },
        { name = "buffer",   group_index = 2 },
        { name = "nvim_lua", group_index = 2 },
        { name = "path",     group_index = 2 },
      }
      opts.mapping = cmp.mapping.preset.insert({
        ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.close(),
        ["<S-CR>"] = cmp.mapping.confirm({ select = true }),
      })
      cmp.setup(opts)
    end,
   },
}

return plugins
