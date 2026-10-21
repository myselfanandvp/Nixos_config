hl.on("hyprland.start", function()
	--    ╭────────────────────────────╮
	--    │        Noctalia shell        │
	--    ╰────────────────────────────╯
	hl.exec_cmd("workfolio")
	hl.exec_cmd("distrobox enter --name ubuntubox -- workfolio")
	hl.exec_cmd("noctalia")
	-- Update D-Bus environment variables so apps know Hyprland is active
	hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=Hyprland")

	--    ╭────────────────────────────╮
	--    │            Polkit          │
	--    ╰────────────────────────────╯
	-- hl.exec_cmd("lxpolkit")
end)
