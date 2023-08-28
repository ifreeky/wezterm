require("gui")
local font = require("font")
local color = require("color")
local key_mapping = require("key_mapping")
local base = require("base")

local config = {}

font.apply_to_config(config)
color.apply_to_config(config)
key_mapping.apply_to_config(config)
base.apply_to_config(config)

return config
