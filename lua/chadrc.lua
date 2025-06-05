-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

-- -@type ChadrcConfig
local M = {}
M.plugins = {}


M.base46 = {
  -- theme = "rxyhn",

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

M.nvdash = {
  load_on_startup = true,
}

M.plugins = {
  status = {
    dashboard = true,
    colorizer = true,
    telescope_media = true,
  },
}

return M
