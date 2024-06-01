{
  description = "My NixOS flake config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    # nur.url = github:nix-community/NUR;
  };
  outputs = { nixpkgs, home-manager, ... }@inputs:
    let 
      system = "x86_64-linux";
    in {
    nixosConfigurations.powerpc = nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [
        ./configuration.nix
	# nur.nixosModules.nur
      ];
    };

    homeConfigurations.sv-cheats-1 = home-manager.lib.homeManagerConfiguration {
      pkgs = import nixpkgs { inherit system; config.allowUnfree = true; };
      modules = [ ./home.nix ];
    };
  };
}
