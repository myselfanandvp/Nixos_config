{ config, pkgs, inputs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    inputs.silentSDDM.nixosModules.default

    ../modules/boot.nix
    ../modules/networking.nix
    ../modules/locale.nix
    ../modules/desktop.nix
    ../modules/audio.nix
    ../modules/users.nix
    ../modules/packages.nix
    ../modules/programs.nix
    ../modules/services.nix
    ../modules/virtualization.nix
    ../modules/nix.nix
    ../modules/security.nix
  ];

  system.stateVersion = "25.11";
}
