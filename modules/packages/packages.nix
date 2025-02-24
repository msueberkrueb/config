{pkgs, ...}: {
  home.packages = with pkgs; [
    alejandra
    nodejs_22
    prettierd
    ripgrep
  ];
}
