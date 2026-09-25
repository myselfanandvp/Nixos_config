{ config, pkgs, inputs, ... }:

{
  services.xserver.enable = true;

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  services.displayManager.sddm = {
    enable = true;

    wayland = {
      enable = true;
    };

    extraPackages = with pkgs; [
      qt6Packages.qtsvg
      qt6Packages.qt5compat
      qt6Packages.qtmultimedia
    ];

    setupScript = ''
      ${pkgs.xrdb}/bin/xrdb -merge - <<EOF
      Xcursor.theme: Bibata-Modern-Ice
      Xcursor.size: 20
      EOF
    '';
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

  xdg.portal = {
    enable = true;

    extraPortals = with pkgs; [
      xdg-desktop-portal-hyprland
      xdg-desktop-portal-gtk
    ];
  };
}
