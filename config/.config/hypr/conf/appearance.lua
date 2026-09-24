--    ╭──────────────────────────────────────╮
--    │    ╭────────────────────────────╮    │
--    │    │         Appearance         │    │
--    │    ╰────────────────────────────╯    │
--    ╰──────────────────────────────────────╯

hl.config({

	-- Scrolling layout configuration (Hyprscroller)
	scrolling = {
		fullscreen_on_one_column = false,
	},

	dwindle = {
		preserve_split = true,
		smart_split = false,
		smart_resizing = true,
	},

	master = {
		new_status = "master",
		mfact = 0.55,
	},

	general = {
		gaps_in = 4,
		gaps_out = 6,
		border_size = 2,

		col = {
			active_border = "rgba(ffffffff)",
			inactive_border = "rgba(444444aa)",
		},

		layout = "dwindle",

		resize_on_border = true,
		extend_border_grab_area = 4,
		hover_icon_on_border = true,

		allow_tearing = false,
	},

	decoration = {
		rounding = 0,
		rounding_power = 0,

		active_opacity = 1.0,
		inactive_opacity = 1.0,
		fullscreen_opacity = 1.0,

		dim_inactive = true,
		dim_strength = 0.08,
		dim_special = 0.25,

		blur = {
			enabled = true,
			size = 6,
			passes = 3,
			new_optimizations = true,
			xray = false,
			vibrancy = 0.2,
			vibrancy_darkness = 0.1,
			brightness = 1.1,
			contrast = 1.0,
			noise = 0.02,
		},

		shadow = {
			enabled = false,
			range = 4,
			render_power = 3,
			color = "rgba(1a1a1aee)",
			offset = { 0, 0 },
			scale = 1.0,
			sharp = false,
		},
	},

	animations = {
		enabled = true,
	},

	misc = {
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
		force_default_wallpaper = 0,

		font_family = "JetBrainsMono Nerd Font",

		mouse_move_enables_dpms = true,
		key_press_enables_dpms = true,

		animate_manual_resizes = false,
		animate_mouse_windowdragging = false,

		render_unfocused_fps = 15,
		initial_workspace_tracking = 1,
	},

	cursor = {
		no_hardware_cursors = false,
		hotspot_padding = 1,
		inactive_timeout = 5,
		no_break_fs_vrr = false,
	},
})

--    ╭──────────────────────────────────────╮
--    │    ╭────────────────────────────╮    │
--    │    │         ANIMATIONS         │    │
--    │    ╰────────────────────────────╯    │
--    ╰──────────────────────────────────────╯
-- Curves
hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("softInOut", { type = "bezier", points = { { 0.45, 0 }, { 0.25, 1 } } })
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })

-- Master switch & default fallbacks
hl.animation({ leaf = "global", enabled = true, speed = 4, bezier = "easeOutQuint" })

-- Windows: Opening/Closing & Resizing
hl.animation({ leaf = "windowsIn", enabled = true, speed = 3, bezier = "softInOut", style = "popin 5%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3, bezier = "softInOut", style = "popin 80%" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 4, bezier = "easeOutQuint" })

-- Borders
hl.animation({ leaf = "borderangle", enabled = true, speed = 30, bezier = "linear", style = "once" })

-- Workspaces
hl.animation({ leaf = "workspaces", enabled = true, speed = 4.5, bezier = "easeOutQuint", style = "slide" })
