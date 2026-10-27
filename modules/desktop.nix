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
      # set the flake package
      package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
      # make sure to also set the portal package, so that they are in sync
      portalPackage =
        inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;

    };

  };

  xdg.portal = {
    enable = true;
  };

  hardware.graphics = {
    package = pkgs-unstable.mesa;
    # if you also want 32-bit support (e.g for Steam)
    enable32Bit = true;
    package32 = pkgs-unstable.pkgsi686Linux.mesa;
  };

}
