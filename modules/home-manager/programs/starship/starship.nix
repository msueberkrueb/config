{
  lib,
  config,
  ...
}: let
  cfg = config.msueberkrueb.starship;
in {
  options = {
    msueberkrueb.starship.enable = lib.mkEnableOption "starship";
  };

  config = lib.mkIf cfg.enable {
    programs.starship = {
      enable = true;
      enableZshIntegration = true;

      settings = builtins.fromTOML (builtins.readFile ./starship.toml);
    };
  };
}
