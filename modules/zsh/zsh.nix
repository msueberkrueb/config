{...}: {
  programs.zsh = {
    enable = true;

    autosuggestion.enable = true;
    history.append = true;
    history.expireDuplicatesFirst = true;
    initExtra = ''
      bindkey '^I' autosuggest-accept
    '';

    oh-my-zsh = {
      enable = true;
      theme = "clean";
      plugins = [
        "git"
      ];
    };
  };
}
