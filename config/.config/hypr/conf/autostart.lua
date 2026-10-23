hl.on("hyprland.start", function()
	--    ╭────────────────────────────╮
	--    │        Noctalia shell        │
	--    ╰────────────────────────────╯
	hl.exec_cmd("workfolio")
	hl.exec_cmd("distrobox enter --name ubuntubox -- workfolio")
	hl.exec_cmd("noctalia")
end)
