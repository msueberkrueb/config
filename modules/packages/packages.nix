{pkgs, ...}: {
  home.packages = with pkgs; [
    alejandra
    awscli2
    dig
    dotnet-sdk
    ilspycmd
    kubectl
    kubelogin-oidc
    nettools
    nodejs_22
    prettierd
    ripgrep
    traceroute
    xdg-utils
  ];
}
