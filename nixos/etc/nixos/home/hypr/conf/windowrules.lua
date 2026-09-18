--    ╭──────────────────────────────────────╮
--    │    ╭────────────────────────────╮    │
--    │    │        WINDOW RULES        │    │
--    │    ╰────────────────────────────╯    │
--    ╰──────────────────────────────────────╯

hl.window_rule({
	name = "ISO Image Writer",

	match = {
		class = "org.kde.isoimagewriter",
	},

	float = true,
	size = "1108 648",
	-- opacity = 0.9,
	center = true,
	animation = "popin",
})

hl.window_rule({
	name = "Yazi",

	match = {
		class = "yazi-float",
	},

	float = true,
	size = "1108 648",
	-- opacity = 0.9,
	center = true,
	animation = "popin",
})

hl.window_rule({
	name = "Btop",

	match = {
		class = "btop-float",
	},

	float = true,
	size = "1108 648",
	opacity = 0.9,
	center = true,
	animation = "popin",
})

hl.window_rule({
	name = "Term",

	match = {
		class = "float-term",
	},

	float = true,
	size = "1108 648",
	-- opacity = 0.9,
	center = true,
	animation = "popin",
})

hl.window_rule({
	name = "ghostty",

	match = {
		class = "com.mitchellh.ghostty",
	},

	-- float = true,
	-- size = "1108 648",
	-- opacity = 0.9,
	-- center = true,
	animation = "popin",
})

hl.window_rule({
	name = "hypr-share",

	match = {
		class = "hyprland-share-picker",
	},

	float = true,
	size = "400 200",
	center = true,
	animation = "popin",
})

hl.window_rule({
	name = "connections",

	match = {
		class = "TUI-float",
	},

	float = true,
	size = "1108 648",
	-- opacity = 0.9,
	center = true,
	animation = "popin",
})

hl.window_rule({
	name = "pavu-control",

	match = {
		class = "org.pulseaudio.pavucontrol",
	},

	float = true,
	center = true,
	size = "1108 648",
	animation = "popin",
})

hl.window_rule({
	name = "workfolio",

	match = {
		class = "workfolio",
	},

	float = true,
	center = true,
	size = "500 700",
	animation = "popin",
	workspace = "special:workfolio",
})

hl.window_rule({
	name = "spotify",

	match = {
		class = "Spotify",
	},

	float = true,
	center = true,
	size = "1108 648",
	animation = "popin",
	workspace = "special:spotify",
})

hl.window_rule({
	name = "SoundRecorder",

	match = {
		class = "org.gnome.SoundRecorder",
	},

	float = true,
	center = true,
	size = "530 480",
	animation = "popin",
})

hl.window_rule({
	name = "Popsicle",

	match = {
		class = "AppRun.wrapped",
	},

	float = true,
	center = true,
	size = "530 480",
	animation = "popin",
})

hl.window_rule({
	name = "Btrfs-Assistant",

	match = {
		class = "btrfs-assistant",
	},

	float = true,
	center = true,
	size = "1108 648",
	animation = "popin",
})

-- hl.window_rule({
-- 	name = "Mpv",
--
-- 	match = {
-- 		class = "mpv",
-- 	},
--
-- 	float = true,
-- 	center = true,
-- 	size = "1108 648",
-- 	animation = "popin",
-- })
--
hl.window_rule({
	name = "Qprompt",

	match = {
		class = "com.cuperino.qprompt",
	},

	float = true,
	center = true,
	fullscreen = true,
	size = "1108 648",
	-- opacity = 0.4,
	animation = "popin",
	workspace = "special:qprompt",
})

hl.window_rule({
	name = "Warpinator",

	match = {
		class = "warpinator-launch.py",
	},

	float = true,
	center = true,
	size = "530 480",
	animation = "popin",
})

hl.window_rule({
	name = "Nautilus",

	match = {
		class = "org.gnome.Nautilus",
	},

	float = true,
	center = true,
	size = "1108 648",
	animation = "popin",
	no_blur = true,
	-- opacity = 0.9,
})

hl.window_rule({
	name = "hyprlauncher",

	match = {
		class = "hyprlauncher",
	},

	-- opacity = 0.9,
	no_blur = true,
})

hl.window_rule({
	name = "google-meet",

	match = {
		title = "meet.google.com is sharing a window.",
	},

	workspace = "special:google-meet silent",
})

hl.window_rule({
	name = "Cava",

	match = {
		title = "cava",
	},

	float = true,
	center = true,
	size = "1092 60",
	animation = "popin",
	-- opacity = 0.9,
	no_blur = true,
})

hl.window_rule({
	name = "calculator",

	match = {
		class = "org.gnome.Calculator",
		title = "Calculator",
	},

	animation = "popin",
	size = "385 616",
	float = true,
	center = true,
})

hl.window_rule({
	name = "LocalSend",

	match = {
		class = "localsend",
		title = "LocalSend",
	},

	animation = "popin",
	size = "385 616",
	float = true,
	center = true,
})

hl.window_rule({
	name = "Amberol",

	match = {
		class = "io.bassi.Amberol",
		title = "Amberol",
	},

	size = "1108 648",
	float = true,
	center = true,
})

hl.window_rule({
	name = "Octopi",

	match = {
		class = "octopi-cachecleaner",
	},

	size = "1108 648",
	float = true,
	center = true,
})

hl.window_rule({
	name = "xwayland-video-bridge-fixes",

	match = {
		class = "xwaylandvideobridge",
	},

	no_initial_focus = true,
	no_focus = true,
	no_anim = true,
	no_blur = true,
	max_size = "1 1",
	-- opacity = 0.0,
})
