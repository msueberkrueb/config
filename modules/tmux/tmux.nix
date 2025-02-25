{pkgs, ...}: {
  programs.tmux = {
    enable = true;

    clock24 = true;
    customPaneNavigationAndResize = true;
    keyMode = "vi";
    mouse = true;
    shortcut = "Space";
    terminal = "screen-256color";

    plugins = with pkgs.tmuxPlugins; [
      catppuccin
    ];
  };
}
