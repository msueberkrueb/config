{...}: {
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
    ./modules/tmux/tmux.nix
    ./modules/zsh/zsh.nix
  ];

  programs.home-manager.enable = true;
}
