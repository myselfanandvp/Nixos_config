local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- Background opacity
config.window_background_opacity = 0.7

-- Font
config.font = wezterm.font("JetBrains Mono")
config.font_size = 12.0

-- Cursor thickness
config.default_cursor_style = "BlinkingBar"

-- Theme
config.color_scheme = "Noctalia"

config.enable_tab_bar = false

-- Custom tab title

wezterm.on("format-tab-title", function(tab)
	return {
		{ Text = "  " .. tab.tab_index + 1 .. "  " },
	}
end)

config.keys = {
	-- New tab
	{
		key = "t",
		mods = "ALT",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},

	-- Close current tab
	{
		key = "w",
		mods = "ALT",
		action = wezterm.action.CloseCurrentTab({ confirm = true }),
	},

	-- Select tabs
	{
		key = "1",
		mods = "ALT",
		action = wezterm.action.ActivateTab(0),
	},

	{
		key = "2",
		mods = "ALT",
		action = wezterm.action.ActivateTab(1),
	},

	{
		key = "3",
		mods = "ALT",
		action = wezterm.action.ActivateTab(2),
	},

	{
		key = "4",
		mods = "ALT",
		action = wezterm.action.ActivateTab(3),
	},

	{
		key = "5",
		mods = "ALT",
		action = wezterm.action.ActivateTab(4),
	},

	{
		key = "6",
		mods = "ALT",
		action = wezterm.action.ActivateTab(5),
	},

	{
		key = "7",
		mods = "ALT",
		action = wezterm.action.ActivateTab(6),
	},

	{
		key = "8",
		mods = "ALT",
		action = wezterm.action.ActivateTab(7),
	},

	{
		key = "9",
		mods = "ALT",
		action = wezterm.action.ActivateTab(8),
	},
}

return config
