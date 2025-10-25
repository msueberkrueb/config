{lib, ...}: {
  imports = [
    ./jq/jq.nix
  ];

  msueberkrueb.jq.enable = lib.mkDefault true;
}
