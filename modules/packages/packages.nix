{pkgs, ...}: {
  home.packages = with pkgs; [
    alejandra
    dotnet-sdk
    ilspycmd
    nodejs_22
    prettierd
    ripgrep
  ];
}
