{
  lib,
  config,
  pkgs,
  ...
}: let
  cfg = config.msueberkrueb.js;
in {
  options = {
    msueberkrueb.js.enable = lib.mkEnableOption "js";
  };

  config = lib.mkIf cfg.enable {
    home.packages = with pkgs; [
      bun
      nodejs_24
    ];
  };
}
