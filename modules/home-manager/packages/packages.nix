{lib, ...}: {
  imports = [
    ./aws/aws.nix
    ./fzf/fzf.nix
    ./jq/jq.nix
    ./js/js.nix
    ./network/network.nix
  ];

  msueberkrueb.aws.enable = lib.mkDefault true;
  msueberkrueb.fzf.enable = lib.mkDefault true;
  msueberkrueb.jq.enable = lib.mkDefault true;
  msueberkrueb.js.enable = lib.mkDefault true;
  msueberkrueb.network.enable = lib.mkDefault true;
}
