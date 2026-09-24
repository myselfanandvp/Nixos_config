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



  programs.qylock = {
              enable = true;
              theme = "material-you";          # any directory name under themes/
              # Optional per-theme tweaks (replaces the interactive prompts):
              themeOptions = {
              };
            };


  programs.niri.enable = true;

  programs.hyprland={
      enable = true;
      withUWSM = false;
    };


xdg.portal = {
  enable = true;
  extraPortals = with pkgs; [
    xdg-desktop-portal-hyprland
    xdg-desktop-portal-gnome
    xdg-desktop-portal-gtk
  ];
  config = {
    hyprland = {
      default = [
        "hyprland"
        "gtk"
      ];
    };
    niri = {
      default = [
        "gnome"
        "gtk"
      ];
    };
  };
};

}
