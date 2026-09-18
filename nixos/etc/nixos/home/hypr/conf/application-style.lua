--    ╭──────────────────────────────────────╮
--    │    ╭────────────────────────────╮    │
--    │    │     Application Style      │    │
--    │    ╰────────────────────────────╯    │
--    ╰──────────────────────────────────────╯

hl.on("hyprland.start", function()
	--    ╭────────────────────────────╮
	--    │         GTK Theme          │
	--    ╰────────────────────────────╯

	-- hl.exec_cmd("gsettings set org.gnome.desktop.interface gtk-theme 'Sweet-Dark-v40'")

	--    ╭────────────────────────────╮
	--    │           Icons            │
	--    ╰────────────────────────────╯

	-- hl.exec_cmd("gsettings set org.gnome.desktop.interface icon-theme 'Dracula'")

	--    ╭────────────────────────────╮
	--    │           Cursor           │
	--    ╰────────────────────────────╯

	hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-theme 'capitaine-cursors'")
	hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-size 24")

	--    ╭────────────────────────────╮
	--    │           Fonts            │
	--    ╰────────────────────────────╯

	-- hl.exec_cmd("gsettings set org.gnome.desktop.interface font-name 'Noto Sans 10'")

	-- hl.exec_cmd("gsettings set org.gnome.desktop.interface document-font-name 'Noto Sans 10'")

	-- hl.exec_cmd("gsettings set org.gnome.desktop.interface monospace-font-name 'JetBrainsMono Nerd Font 10'")
end)
