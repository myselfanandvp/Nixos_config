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
    xdgOpenUsePortal = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
      pkgs.xdg-desktop-portal-hyprland
    ];
    config = {
      common.default = [ "gtk" "hyprland" ];
    };
  };

 environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
    MOZ_ENABLE_WAYLAND = "1";
    XDG_CURRENT_DESKTOP = "Hyprland";
    XDG_SESSION_TYPE = "wayland";
  };
}
