return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    'numToStr/Comment.nvim',
    opts = {
      config = function()
        require('Comment').setup()

        local ft = require('Comment.ft')

        ft.set('c', '//%s')
      end
    }
  },
  { 'nvchad/volt', lazy = true },
  { 'nvchad/menu', lazy = true },
  {
    "j-hui/fidget.nvim",
    config = function()
      require('fidget').setup()
    end

  },
  {
    "sindrets/diffview.nvim",
    cmd = "DiffviewOpen",
    config = function()
      require("diffview").setup()
    end,
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
  {
    "mrcjkb/rustaceanvim",
    version = "^6",
    ft = { "rust" },
    config = function(_, _)
      local on_attach = require("nvchad.configs.lspconfig").on_attach
      vim.g.rustaceanvim = {
        server = {
          on_attach = on_attach },
      }
    end
  },
}
