{
  description = "Home Manager Config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-kubectl.url = "github:nixos/nixpkgs/9d86c39f7ae97eba68b3e7e00b5706fc476c5443";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    nixpkgs,
    nixpkgs-kubectl,
    home-manager,
    nixvim,
    ...
  }: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
    pkgs-kubectl = nixpkgs-kubectl.legacyPackages.${system}.kubectl;
  in {
    homeConfigurations."msueberkrueb" = home-manager.lib.homeManagerConfiguration {
      inherit pkgs;

      extraSpecialArgs = {
        system = system;
        pkgs-kubectl = import nixpkgs-kubectl {
          inherit system;
        };
      };

      modules = [
        nixvim.homeManagerModules.nixvim
        ./home.nix
      ];
    };
  };
}
