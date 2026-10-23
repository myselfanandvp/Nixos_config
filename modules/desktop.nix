{
  pkgs,
  ...
}:

{
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
    xdgOpenUsePortal = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
      pkgs.xdg-desktop-portal-gnome
      pkgs.xdg-desktop-portal-hyprland
    ];
    config = {
      common = {
        default = [ "gtk" ];
      };
      niri = {
        default = [
          "gnome"
          "gtk"
        ];
      };
      hyprland = {
        default = [
          "hyprland"
          "gnome"
          "gtk"
        ];
      };
    };
  };

}
