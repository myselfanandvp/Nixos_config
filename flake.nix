{
  description = "Custom Nixos + Hyprland and Niri with Noctalia System flake";

  inputs = {
    nix-cachyos-kernel.url = "github:xddxdd/nix-cachyos-kernel/release";
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    qylock.url = "github:Darkkal44/qylock";
    noctalia.url = "github:noctalia-dev/noctalia";
    yazi.url = "github:sxyazi/yazi";
    hyprland.url = "github:hyprwm/Hyprland";
    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
      inputs.hyprland.follows = "hyprland"; # Prevents version mismatch.
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs =
    {
      self,
      nixpkgs,
      nix-cachyos-kernel,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
    in
    {
      nixosConfigurations = {
        #Desktop config
        desktop = nixpkgs.lib.nixosSystem {
          inherit system;
          specialArgs = { inherit inputs; };
          modules = [
            ./hosts/desktop/configuration.nix
          ];

        };
        #Laptop config
        laptop = nixpkgs.lib.nixosSystem {
          inherit system;
          specialArgs = { inherit inputs; };
          modules = [
            ./hosts/laptop/configuration.nix
          ];
        };

      };

      homeConfigurations = {
        anand = inputs.home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.${system};
          extraSpecialArgs = { inherit inputs; };
          modules = [
            ./home/anand.nix
          ];
        };
      };

    };
}
