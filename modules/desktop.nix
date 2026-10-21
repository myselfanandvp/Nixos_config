{ config, pkgs, inputs, ... }:

{

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  services.displayManager.sddm = {
    enable = true;
    wayland = {
      enable = true;
    };
    settings = {
      Theme = {
        CursorTheme = "Bibata-Modern-Classic";
        CursorSize = 18;
      };
    };
    extraPackages = with pkgs; [
      qt6Packages.qtsvg
      qt6Packages.qt5compat
      qt6Packages.qtmultimedia
    ];
  };


  programs.qylock = {
    enable = true;
    theme = "material-you";
    themeOptions = {
    };
  };


programs.hyprland={
enable = true;
    withUWSM = false;
    portalPackage = pkgs.xdg-desktop-portal-hyprland;
    xwayland.enable =true;
  };

  programs.niri  = {
    enable = true;
  };

}
