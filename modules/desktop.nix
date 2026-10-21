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


  programs.niri.enable = true;

  programs.mango.enable = true;



  xdg.portal = {
    enable = true;
    xdgOpenUsePortal = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
      pkgs.xdg-desktop-portal-wlr
      pkgs.xdg-desktop-portal-gnome
    ];
    config = {
        niri = {
          default = [ "gnome" "gtk" ];
        };
      };
  };

}
