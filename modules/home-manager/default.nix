{
  lib,
  inputs,
  ...
}: {
  imports = [
    inputs.nixvim.homeModules.nixvim
    inputs.sops-nix.homeManagerModules.sops

    ./programs/git/git.nix
    ./programs/neovim/neovim.nix
    ./programs/sops/sops.nix
    ./programs/ssh/ssh.nix
    ./programs/starship/starship.nix
    ./programs/zsh/zsh.nix
  ];

  msueberkrueb.git.enable = lib.mkDefault true;
  msueberkrueb.neovim.enable = lib.mkDefault true;
  msueberkrueb.sops.enable = lib.mkDefault true;
  msueberkrueb.ssh.enable = lib.mkDefault true;
  msueberkrueb.starship.enable = lib.mkDefault true;
  msueberkrueb.zsh.enable = lib.mkDefault true;

  home.stateVersion = "25.05";
}
