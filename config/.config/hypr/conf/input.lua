--    ╭──────────────────────────────────────╮
--    │    ╭────────────────────────────╮    │
--    │    │           Inputs           │    │
--    │    ╰────────────────────────────╯    │
--    ╰──────────────────────────────────────╯

hl.config({
	input = {
		kb_layout = "us",
		follow_mouse = 1,
		sensitivity = 1,
		accel_profile = "adaptive",

		touchpad = {
			natural_scroll = false,
			tap_to_click = true,
			disable_while_typing = true,
		},
	},
})

hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace",
})
