{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    
silentSDDM = {
    url = "github:uiriansan/SilentSDDM";
    inputs.nixpkgs.follows = "nixpkgs";
  };
    noctalia = {
    url = "github:noctalia-dev/noctalia-shell";
    inputs.nixpkgs.follows  = "nixpkgs";
    inputs.noctalia-qs.follows = "noctalia-qs";
    };
    noctalia-qs = {
      url = "github:noctalia-dev/noctalia-qs";
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
             	home-manager.users.anand = ./home/anand.nix;}
          ];
	};
  	};
}
