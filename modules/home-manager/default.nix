{lib, ...}: {
  imports = [
    ./programs/git/git.nix
    ./programs/ssh/ssh.nix
    ./programs/zsh/zsh.nix
  ];

  msueberkrueb.git.enable = lib.mkDefault true;
  msueberkrueb.ssh.enable = lib.mkDefault true;
  msueberkrueb.zsh.enable = lib.mkDefault true;

  home.stateVersion = "25.05";
}
