{
  lib,
  config,
  pkgs,
  ...
}: let
  cfg = config.msueberkrueb.aws;
in {
  options = {
    msueberkrueb.aws.enable = lib.mkEnableOption "aws";
  };

  config = lib.mkIf cfg.enable {
    home.packages = with pkgs; [
      awscli2
    ];
  };
}
