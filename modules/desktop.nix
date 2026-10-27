{
  pkgs,
  inputs,
  ...
}:

{
  imports = [
    inputs.umbriel.nixosModules.default
    inputs.qylock.nixosModules.default
  ];
  programs = {
    qylock = {
      enable = true;
      theme = "material-you";
      themeOptions = {

      };
    };
    niri = {
      enable = true;
    };
    umbriel.enable = true;
    hyprland = {
      enable = true;
      withUWSM = true;
      xwayland = {
        enable = true;
      };
    };

  };

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-hyprland
      xdg-desktop-portal-gtk
      xdg-desktop-portal-gnome
    ];
    config = {
      common.default = [ "gtk" ];
      hyprland = {
        default = [
          "hyprland"
          "gtk"
        ];
        "org.freedesktop.impl.portal.ScreenCast" = [ "hyprland" ];
        "org.freedesktop.impl.portal.Screenshot" = [ "hyprland" ];
        "org.freedesktop.impl.portal.FileChooser" = [ "gtk" ];
      };
    };
  };

}
