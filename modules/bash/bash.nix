{...}: {
  programs.bash = {
    enable = true;
    bashrcExtra = ''
      tmux attach -t work || tmux new -s work
    '';
  };
}
