{pkgs, ...}: {
  home.packages = with pkgs; [
    alejandra
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
