{
  inputs,
  pkgs,
  ...
}:
let
  pkgs-unstable = inputs.hyprland.inputs.nixpkgs.legacyPackages.${pkgs.stdenv.hostPlatform.system};
in
{
  imports = with inputs; [
    home-manager.nixosModules.home-manager
    qylock.nixosModules.default
    hyprland.nixosModules.default
    umbriel.nixosModules.default
    nur.modules.nixos.default
  ];

  home-manager = {
    useGlobalPkgs = false;
    useUserPackages = true;
    extraSpecialArgs = { inherit inputs; };
    users = {
      anand = ../home/anand/home.nix;
    };
  };

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

    umbriel.enable = true;
  };

  # Change this part to use the GNOME portal backend for Niri
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
    ];
  };

  hardware.graphics = {
    package = pkgs-unstable.mesa;
    enable32Bit = true;
    package32 = pkgs-unstable.pkgsi686Linux.mesa;
    extraPackages = with pkgs-unstable; [
      mesa.opencl # Enables Rusticl (OpenCL) support
    ];
  };

}
