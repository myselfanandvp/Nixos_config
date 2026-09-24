--    ╭──────────────────────────────────────╮
--    │    ╭────────────────────────────╮    │
--    │    │        LAYER RULES         │    │
--    │    ╰────────────────────────────╯    │
--    ╰──────────────────────────────────────╯

hl.layer_rule({
	name = "waybar-blur",
	match = {
		namespace = "waybar",
	},

	blur = true,
})

--    ╭──────────────────────────────────────╮
--    │    ╭────────────────────────────╮    │
--    │    │        SCRATCHPADS         │    │
--    │    ╰────────────────────────────╯    │
--    ╰──────────────────────────────────────╯

local mainMod = "SUPER"

hl.bind(mainMod .. " + ALT + W", hl.dsp.workspace.toggle_special("workfolio"))

hl.bind(mainMod .. " + ALT + M", hl.dsp.workspace.toggle_special("spotify"))

hl.bind(mainMod .. " + ALT + Q", hl.dsp.workspace.toggle_special("qprompt"))

--    ╭──────────────────────────────────────╮
--    │    ╭────────────────────────────╮    │
--    │    │          NOCTALIA          │    │
--    │    ╰────────────────────────────╯    │
--    ╰──────────────────────────────────────╯

hl.layer_rule({
	name = "noctalia",
	match = {
		namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd|window-switcher)$",
	},
	no_anim = true,
	ignore_alpha = 0.5,
	blur = true,
	blur_popups = true,
})
