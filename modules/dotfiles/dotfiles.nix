{pkgs, ...}: {
  home.file = {
    ".editorconfig".source = ./.editorconfig;
    ".hushlogin".source = ./.hushlogin;
  };
}
