{inputs, ...}: {
  imports = [
    inputs.nixvim.homeModules.nixvim
    inputs.sops-nix.homeManagerModules.sops

    ./packages/packages.nix
    ./programs/programs.nix
  ];

  home.stateVersion = "25.05";
}
