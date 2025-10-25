{
  lib,
  config,
  ...
}: let
  cfg = config.msueberkrueb.git;
in {
  options = {
    msueberkrueb.git.enable = lib.mkEnableOption "git";
  };

  config = lib.mkIf cfg.enable {
    programs.git.enable = true;
    programs.git.signing = {
      format = "ssh";
      key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIP0RJSHaad8vStxJQ1n4pXNs1a2glcA6lM2DKYubRbEa";
      signByDefault = true;
    };
    programs.git.settings = {
      branch.autoSetupRebase = "always";
      init.defaultBranch = "main";
      pull.rebase = true;
      push.autoSetupRemote = true;
      user.email = "88376203+msueberkrueb@users.noreply.github.com";
      user.name = "msueberkrueb";
    };
  };
}
