{ config, pkgs, inputs, ... }:

{
  # services.xserver.enable = true;

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
        CursorTheme = "volantes_cursors";
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

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
    withUWSM = true;
  };


  programs.niri= {
    enable = true;
  };

  xdg.portal = {
    enable = true;
    xdgOpenUsePortal = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
      pkgs.xdg-desktop-portal-hyprland
      pkgs.xdg-desktop-portal-gnome
    ];
    config = {
        hyprland = {
          default = [ "hyprland" "gtk" ];
        };

        niri = {
          default = [ "gnome" "gtk" ];
        };
      };
  };

}
