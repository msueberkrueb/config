{inputs, ...}: {
  imports = [
    inputs.nixvim.homeModules.nixvim
    inputs.sops-nix.homeManagerModules.sops

    ./programs/programs.nix
  ];

  home.stateVersion = "25.05";
}
