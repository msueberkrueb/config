{...}: {
  home.username = "msueberkrueb";
  home.homeDirectory = "/home/msueberkrueb";

  imports = [
    ../../modules/home-manager/default.nix
  ];

  programs.home-manager.enable = true;
}
