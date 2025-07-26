{
  pkgs,
  pkgs-kubectl,
  ...
}: {
  home.packages = with pkgs; [
    alejandra
    awscli2
    deno
    dig
    dotnet-sdk
    ilspycmd
    iptables
    jq
    kubelogin-oidc
    nettools
    nodejs_22
    prettierd
    ripgrep
    sops
    traceroute
    xdg-utils

    pkgs-kubectl.kubectl
  ];
}
