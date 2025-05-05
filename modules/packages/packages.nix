{pkgs, ...}: {
  home.packages = with pkgs; [
    alejandra
    dotnet-sdk
    ilspycmd
    kubectl
    kubelogin-oidc
    nodejs_22
    prettierd
    ripgrep
    xdg-utils
  ];
}
