{lib, ...}: {
  imports = [
    ./fzf/fzf.nix
    ./jq/jq.nix
    ./js/js.nix
  ];

  msueberkrueb.fzf.enable = lib.mkDefault true;
  msueberkrueb.jq.enable = lib.mkDefault true;
  msueberkrueb.js.enable = lib.mkDefault true;
}
