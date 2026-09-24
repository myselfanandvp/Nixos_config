{ config, pkgs, ... }:

{
  services.xserver.enable = true;

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  services.displayManager.sddm = {
    enable =true;
    theme = "sddm-astronaut-theme";
    extraPackages = [ pkgs.sddm-astronaut ];
  };

  programs.niri = {
      enable = true;
    };

  programs.hyprland = {
    enable = true;
    withUWSM =false;
    xwayland.enable = true;
  };


  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
    xdg-desktop-portal-hyprland 
    xdg-desktop-portal-gtk
    xdg-desktop-portal-gnome ];
  };
}
