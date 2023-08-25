local wezterm = require("wezterm")

local module = {}

function module.apply_to_config(config)
	config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 }
	config.keys = {
		{
			key = "k",
			mods = "CMD",
			action = wezterm.action.Multiple({
				wezterm.action.ClearScrollback("ScrollbackAndViewport"),
				wezterm.action.SendKey({
					key = "L",
					mods = "CTRL",
				}),
			}),
		},
		{ -- 搜索
			key = "f",
			mods = "CMD",
			action = wezterm.action.Search({
				CaseInSensitiveString = "", -- 大小写不敏感
				-- CaseSensitiveString = ''-- 大小写敏感
			}),
		},
		{ -- 关闭当前窗口
			key = "w",
			mods = "CMD",
			action = wezterm.action.CloseCurrentTab({
				confirm = true,
			}),
		},
		{ -- 快速移动到行首行尾
			key = "H",
			mods = "CMD",
			action = wezterm.action.SendKey({
				key = "Home",
				mods = "NONE",
			}),
		},
		{
			key = "L",
			mods = "CMD",
			action = wezterm.action.SendKey({
				key = "End",
				mods = "NONE",
			}),
		},
		{
			key = "|",
			mods = "LEADER|SHIFT",
			action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "-",
			mods = "LEADER",
			action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
		},
	}
end

return module
