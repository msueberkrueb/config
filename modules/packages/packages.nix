{
  pkgs,
  pkgs-kubectl,
  ...
}: {
  home.packages = with pkgs; [
    alejandra
    awscli2
    dig
    dotnet-sdk
    ilspycmd
    jq
    kubelogin-oidc
    nettools
    nodejs_22
    prettierd
    ripgrep
    traceroute
    xdg-utils

    pkgs-kubectl.kubectl
  ];
}
