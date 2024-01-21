{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

     home-manager = {
      url = "github:nix-community/home-manager";
       inputs.nixpkgs.follows = "nixpkgs";
     };
     nix-colors.url = "github:misterio77/nix-colors";
     nixvim = {url = "github:nix-community/nixvim"; inputs.nixpkgs.follows = "nixpkgs";};
  };

  outputs = { self, nixpkgs, home-manager, nix-colors, nixvim, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
    
      nixosConfigurations = {
      nocta =  nixpkgs.lib.nixosSystem {
          specialArgs = {inherit inputs;};
          modules = [ 
            ./system/configuration.nix
             home-manager.nixosModules.home-manager {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.nocta = import ./home/home.nix;
              home-manager.extraSpecialArgs = {inherit inputs; inherit nix-colors; inherit nixvim;};
             }
          ];
        };

    };
    };
}
