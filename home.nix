{
  lib,
  sops-nix,
  ...
}: {
  home.username = "msueberkrueb";
  home.homeDirectory = "/home/msueberkrueb";

  home.stateVersion = "24.11";

  imports = [
    ./modules/bash/bash.nix
    ./modules/dotfiles/dotfiles.nix
    ./modules/git/git.nix
    ./modules/neovim/neovim.nix
    ./modules/packages/packages.nix
    ./modules/session-variables/session-variables.nix
    ./modules/sops/sops.nix
    ./modules/tmux/tmux.nix
    ./modules/zsh/zsh.nix
  ];

  home.activation = {
    resetEnvironment = lib.hm.dag.entryAfter ["writeBondary"] ''
      if [ -f ~/.env ]; then
        rm ~/.env
      fi
    '';
  };

  programs.ssh.enable = true;
  programs.home-manager.enable = true;
}
