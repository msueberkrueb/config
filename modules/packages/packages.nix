{pkgs, ...}: {
  home.packages = with pkgs; [
    alejandra
    prettierd
    ripgrep
  ];
}
