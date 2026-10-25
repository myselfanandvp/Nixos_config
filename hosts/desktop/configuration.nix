{
  _,
  inputs,
  ...
}:

{
  imports = [

    inputs.home-manager.nixosModules.home-manager
    ./hardware-configuration.nix
    ../../modules/boot.nix
    ../../modules/networking.nix
    ../../modules/locale.nix
    ../../modules/desktop.nix
    ../../modules/audio.nix
    ../../modules/users.nix
    ../../modules/packages.nix
    ../../modules/programs.nix
    ../../modules/services.nix
    ../../modules/nix.nix
    ../../modules/security.nix
  ];

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    extraSpecialArgs = { inherit inputs; };
    users = {
      anand = ../.././home/anand.nix;
    };
  };
  system.stateVersion = "26.05";
}
