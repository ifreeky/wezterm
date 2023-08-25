local wezterm = require("wezterm")
local module = {}

function module.apply_to_config(config)
	config.color_scheme = "tokyonight-day"
	config.colors = {
		selection_bg = "#D0AB52",
		tab_bar = {

			-- The color of the strip that goes along the top of the window
			background = "#282828",

			-- The active tab is the one that has focus in the window
			active_tab = {
				-- The color of the background area for the tab
				bg_color = "#007CF1",
				-- The color of the text for the tab
				fg_color = "#E9E9ED",

				intensity = "Normal",
				underline = "None",
				italic = false,
				strikethrough = false,
			},

			-- Inactive tabs are the tabs that do not have focus
			inactive_tab = {
				bg_color = "#A7AECE",
				fg_color = "#007CF1",
			},
			inactive_tab_hover = {
				bg_color = "#A7AECE",
				fg_color = "#ff65fd",
			},

			new_tab = {
				bg_color = "#E1E2E7",
				fg_color = "#007CF1",
			},
			new_tab_hover = {
				bg_color = "#007CF1",
				fg_color = "#E9E9ED",
			},
		},
	}
	-- The active tab is the} one that has focus in the window
	config.enable_tab_bar = true
	config.window_frame = {
		font = wezterm.font({ family = "Roboto", weight = "Bold" }),
		font_size = 12.0,
		active_titlebar_bg = "#E1E2E7",
	}
end

return module
