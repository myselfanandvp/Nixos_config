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
    setupScript = ''
        ${pkgs.xrdb}/bin/xrdb -merge - <<EOF
        Xcursor.theme: Bibata-Modern-Ice
        Xcursor.size: 20
        EOF
      '';
    };



  programs.qylock = {
  enable = true;
  theme = "material-you";          # any directory name under themes/
  # Optional per-theme tweaks (replaces the interactive prompts):
  themeOptions = {
  };
  };


programs.hyprland = {
  enable = true;
  package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
  portalPackage = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
};

xdg.portal = {
  enable = true;
  xdgOpenUsePortal = true;
  extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  config.common.default = [ "hyprland" "gtk" ];
};   

}
