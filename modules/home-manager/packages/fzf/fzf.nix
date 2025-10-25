{
  lib,
  config,
  pkgs,
  ...
}: let
  cfg = config.msueberkrueb.fzf;
in {
  options = {
    msueberkrueb.fzf.enable = lib.mkEnableOption "fzf";
  };

  config = lib.mkIf cfg.enable {
    home.packages = with pkgs; [
      fzf
    ];
  };
}
