{lib, ...}: {
  imports = [
    ./git/git.nix
    ./neovim/neovim.nix
    ./sops/sops.nix
    ./ssh/ssh.nix
    ./starship/starship.nix
    ./zsh/zsh.nix
  ];

  msueberkrueb.git.enable = lib.mkDefault true;
  msueberkrueb.neovim.enable = lib.mkDefault true;
  msueberkrueb.sops.enable = lib.mkDefault true;
  msueberkrueb.ssh.enable = lib.mkDefault true;
  msueberkrueb.starship.enable = lib.mkDefault true;
  msueberkrueb.zsh.enable = lib.mkDefault true;
}
