local wezterm = require("wezterm")

local module = {}

function module.apply_to_config(config)
	config.font = wezterm.font("JetBrains Mono", { weight = "Bold", italic = true })
	config.font_size = 13
end

return module
