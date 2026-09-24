{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    qylock.url = "github:Darkkal44/qylock";
    noctalia.url = "github:noctalia-dev/noctalia";
    home-manager.url = "github:nix-community/home-manager";
    yazi.url = "github:sxyazi/yazi";
    mangowm.url = "github:mangowm/mango";
    helium.url = "github:oxcl/nix-flake-helium-browser";
    zen.url =  "github:youwen5/zen-browser-flake";
  };

  outputs = { self, nixpkgs,home-manager,qylock,helium,zen,... } @inputs: {
  nixosConfigurations = {
        # Desktop Configuration
      desktop = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };

        modules = [
          ./hosts/desktop/configuration.nix
          ./hosts/desktop/noctalia.nix
          qylock.nixosModules.default
          helium.nixosModules.default
          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.extraSpecialArgs = { inherit inputs; };
            home-manager.users.anand = ./home/anand.nix;
          }
        ];
      };

      laptop= nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };
        modules = [
          ./hosts/desktop/configuration.nix
          ./hosts/desktop/noctalia.nix
          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.extraSpecialArgs = { inherit inputs; };
            home-manager.users.anand = ./home/anand.nix;
          }
        ];
      };


    };

};
}
