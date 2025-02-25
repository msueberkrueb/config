{...}: {
  home.username = "msueberkrueb";
  home.homeDirectory = "/home/msueberkrueb";

  home.stateVersion = "24.11";

  imports = [
    ./modules/dotfiles/dotfiles.nix
    ./modules/git/git.nix
    ./modules/neovim/neovim.nix
    ./modules/packages/packages.nix
    ./modules/tmux/tmux.nix
    ./modules/zsh/zsh.nix
  ];

  programs.home-manager.enable = true;
}
