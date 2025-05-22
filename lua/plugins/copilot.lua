-- Add the following blocks in to your custom/plugins.lua file to install the plugins
--
local overrides = require "configs.copilot"

local plugins = {
    -- ... all your other plugins ...

    { import = "nvchad.blink.lazyspec" },
    {
        "zbirenbaum/copilot.lua",
        event = "InsertEnter",
        opts = {
            suggestion = { enabled = false },
            panel = { enabled = false },
            filetypes = {
                markdown = true,
                help = true,
            },
        },
    },
    {
        "saghen/blink.cmp",
        optional = true,
        dependencies = { "fang2hou/blink-copilot" },
        opts = {
            sources = {
                default = { "copilot" },
                providers = {
                    copilot = {
                        name = "copilot",
                        module = "blink-copilot",
                        score_offset = 100,
                        async = true,
                    }
                }
            },
            keymap = {
                preset = 'default',
                ['<C-space'] = { function(cmp) cmp.show({ providers = { 'snippets' } }) end },
                ['<S-CR>'] = { function(cmp) cmp.select_and_accept() end },
                ['<C-e>'] = { function(cmp) cmp.hide() end },
                ['<C-j>'] = { function(cmp) cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert }) end },
                ['<CR>'] = {},
            },
        }
    },
}

return plugins
