{
  pkgs,
  config,
  ...
}: {
  programs.tmux = {
    enable = true;

    clock24 = true;
    customPaneNavigationAndResize = true;
    keyMode = "vi";
    mouse = true;
    shell = "${config.programs.zsh.package}/bin/zsh";
    shortcut = "Space";
    extraConfig = ''
      set-option -g default-terminal "tmux-256color"
      set-option -sa terminal-overrides ",xterm-256color:Tc"
    '';

    plugins = with pkgs.tmuxPlugins; [
      catppuccin
    ];
  };
}
