{
  pkgs,
  config,
  ...
}: {
  programs.tmux = {
    enable = true;

    baseIndex = 1;
    clock24 = true;
    customPaneNavigationAndResize = true;
    keyMode = "vi";
    mouse = true;
    shell = "${config.programs.zsh.package}/bin/zsh";
    shortcut = "Space";
    extraConfig = ''
      set-option -g default-terminal "tmux-256color"
      set-option -sa terminal-overrides ",xterm-256color:Tc"

      bind-key c new-window -c "#{pane_current_path}"
      bind-key % split-window -h -c "#{pane_current_path}"
      bind-key '"' split-window -c "#{pane_current_path}"
    '';

    plugins = with pkgs.tmuxPlugins; [
      catppuccin
    ];
  };
}
