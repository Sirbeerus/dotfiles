i{
    description = "My Home Manager Flake";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-20.03";
        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        }
        flake-utils = {
            url = "github:nix-community/flake-utils";
            inputs.nixpkgs.follows = "nixpkgs";
        }
    };

    outputs = {nixpkgs, home-manager, flake-utils, ...}: {
        defaultPackage.x86_64-linux = home-manager.defaultPackage.x86_64-linux;
        defaultPackage.x86_64-darwin = home-manager.defaultPackage.x86_64-darwin;

        homeConfigurations = {
            "sirbeerus" = flake-utils.home-manager-config {
                config = {
                  pkgs = nixpkgs.legacyPackages.x86_64-darwin;
                  modules = [ /Users/sirbeerus/.config/nixpkgs/home.nix ];
                }
            };
        };
    };
}
