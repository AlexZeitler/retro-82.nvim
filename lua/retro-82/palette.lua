-- Retro-82 palette, ported from omarchy-retro-82-theme
-- Source: colors.toml + aether.zed.json
local M = {}

M.colors = {
  -- Base
  bg          = "#00172e", -- deep navy
  bg_alt      = "#134e5a", -- lifted surface / muted
  fg          = "#f6dcac", -- cream
  fg_dim      = "#a7c9c6", -- muted cyan-cream
  cursor      = "#f6dcac",

  -- Accents
  red         = "#f85525", -- bright orange-red
  orange      = "#faa968", -- amber accent
  orange_dark = "#e97b3c",
  teal        = "#028391",
  teal_dim    = "#3f8f8a",
  cyan        = "#8cbfb8",

  -- Selection
  sel_fg      = "#00172e",
  sel_bg      = "#faa968",

  none        = "NONE",
}

return M
