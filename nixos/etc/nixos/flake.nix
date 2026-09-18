{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    noctalia = {
    url = "github:noctalia-dev/noctalia";
    inputs.nixpkgs.follows  = "nixpkgs";

    };

mangowm = {
      url = "github:mangowm/mango";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs = { self, nixpkgs,home-manager,... } @inputs: {

  nixosConfigurations."nixos" = nixpkgs.lib.nixosSystem{
   system = "x86_64-linux";
   specialArgs = {inherit inputs;};
   modules=[
            ./hosts/configuration.nix
	          ./hosts/noctalia.nix
             home-manager.nixosModules.home-manager{
             home-manager.useGlobalPkgs = true;
             home-manager.useUserPackages = true;
             home-manager.extraSpecialArgs = {
                inherit inputs;
              };
             home-manager.users.anand = ./home/anand.nix;
	}
          ];
	};
  	};
}
