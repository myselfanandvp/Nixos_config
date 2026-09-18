{ config, pkgs, ... }:

{
  services.xserver.enable = true;

  services.displayManager.sddm.enable = true;


  services.xserver.xkb = {
    layout = "us";
    variant = "";
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
