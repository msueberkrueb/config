{
  lib,
  config,
  ...
}: let
  cfg = config.msueberkrueb.zsh;
in {
  options = {
    msueberkrueb.zsh.enable = lib.mkEnableOption "zsh";
  };

  config = lib.mkIf cfg.enable {
    home.shell.enableZshIntegration = true;

    programs.zsh = {
      enable = true;

      dotDir = "${config.home.homeDirectory}/.config/zsh";
      autosuggestion.enable = true;
      history.append = true;
      history.expireDuplicatesFirst = true;
      syntaxHighlighting.enable = true;

      initContent = ''
        bindkey '^I' autosuggest-accept

        { eval `ssh-agent`; ssh-add ~/.ssh/id_ed25519; } &>/dev/null
      '';

      oh-my-zsh = {
        enable = true;
        plugins = [
          "bun"
          "git"
          "gh"
          "kubectl"
        ];
      };
    };
  };
}
