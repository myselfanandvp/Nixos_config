hl.on("hyprland.start", function()
	--    ╭────────────────────────────╮
	--    │        Noctalia shell        │
	--    ╰────────────────────────────╯

	hl.exec_cmd("noctalia")
	hl.exec_cmd("workfolio")
	hl.exec_cmd("distrobox enter --name ubuntubox -- workfolio")
	hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
end)
