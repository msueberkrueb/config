{
  lib,
  config,
  pkgs,
  ...
}: let
  cfg = config.msueberkrueb.jq;
in {
  options = {
    msueberkrueb.jq.enable = lib.mkEnableOption "jq";
  };

  config = lib.mkIf cfg.enable {
    home.packages = with pkgs; [
      jq
      yq
    ];
  };
}
