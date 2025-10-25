{
  lib,
  config,
  pkgs,
  ...
}: let
  cfg = config.msueberkrueb.network;
in {
  options = {
    msueberkrueb.network.enable = lib.mkEnableOption "network";
  };

  config = lib.mkIf cfg.enable {
    home.packages = with pkgs; [
      dig
      nettools
    ];
  };
}
