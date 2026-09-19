{ config, pkgs, ... }:

{
  services.xserver.enable = true;



  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };



 services.displayManager.sddm = {
    enable = true;
  };

services.displayManager.sddm.wayland.enable = true;

programs.qylock = {
  enable = true;
  theme = "Forest";
  # quickshell.enable = true;

  themeOptions = {
    terraria.backgroundMode = "time";
    Genshin.backgroundMode = "time";

    clockwork.orbital = {
      themeMode = "dark";
      enableWindup = true;
    };

    osu.gameMode = "menu";
  };
};

  programs.niri={
      enable =true;
    };
  programs.mango.enable = true;

xdg.portal = {
  enable = true;
  extraPortals = [
    pkgs.xdg-desktop-portal-gtk
    pkgs.xdg-desktop-portal-wlr
    pkgs.xdg-desktop-portal-gnome
  ];
};   

}
