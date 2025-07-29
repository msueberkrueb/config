{
  pkgs,
  config,
  ...
}: {
  home.file = {
    ".editorconfig".source = ./.editorconfig;
    ".hushlogin".source = ./.hushlogin;
    ".kube/kubelogin.sh".source = ./.kube/kubelogin.sh;
    ".prettierrc".source = ./.prettierrc;
  };
}
