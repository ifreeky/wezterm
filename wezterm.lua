local wezterm = require("wezterm")
local font = require("font")
local color = require("color")

local config = {}

font.apply_to_config(config)
color.apply_to_config(config)

return config
