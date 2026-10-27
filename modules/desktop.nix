{
  inputs,
  pkgs,
  ...
}:
let
  pkgs-unstable = inputs.hyprland.inputs.nixpkgs.legacyPackages.${pkgs.stdenv.hostPlatform.system};
in
{
  imports = [
    inputs.qylock.nixosModules.default
    inputs.hyprland.nixosModules.default
  ];

  programs = {
    qylock = {
      enable = true;
      theme = "material-you-dark";
      themeOptions = { };
    };

    hyprland = {
      enable = true;
      package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
      portalPackage =
        inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
    };
  };

  # Change this part to use the GNOME portal backend for Niri
  xdg.portal.enable = true;

  hardware.graphics = {
    package = pkgs-unstable.mesa;
    enable32Bit = true;
    package32 = pkgs-unstable.pkgsi686Linux.mesa;
  };
}
