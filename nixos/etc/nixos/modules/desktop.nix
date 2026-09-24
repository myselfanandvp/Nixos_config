{ config, pkgs, ... }:

{
  services.xserver.enable = true;

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };


  services.displayManager.sddm = {
      enable = true;
      wayland={
          enable = true;
      };
      extraPackages = with pkgs;[
          qt6Packages.qtsvg
          qt6Packages.qt5compat
          qt6Packages.qtmultimedia
      ];
    };

  programs.niri = {
      enable = true;
    };

  programs.hyprland = {
    enable = true;
  };


  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
    xdg-desktop-portal-hyprland 
    xdg-desktop-portal-gtk
    xdg-desktop-portal-gnome ];
  config = {
     hyprland.default = [ "hyprland" "gtk" ];
     niri.default = [ "gnome" "gtk" ];
   };
  };
}
