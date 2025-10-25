{
  lib,
  config,
  ...
}: let
  cfg = config.msueberkrueb.ssh;
in {
  options = {
    msueberkrueb.ssh.enable = lib.mkEnableOption "ssh";
  };

  config = lib.mkIf cfg.enable {
    programs.ssh.enable = true;
    programs.ssh.enableDefaultConfig = false;
  };
}
