{
  lib,
  config,
  pkgs,
  ...
}: let
  cfg = config.msueberkrueb.sops;
in {
  options = {
    msueberkrueb.sops.enable = lib.mkEnableOption "sops";
  };

  config = lib.mkIf cfg.enable {
    home.packages = with pkgs; [
      sops
    ];

    sops = {
      defaultSopsFormat = "yaml";
      age.sshKeyPaths = ["${config.home.homeDirectory}/.ssh/id_ed25519"];
    };
  };
}
