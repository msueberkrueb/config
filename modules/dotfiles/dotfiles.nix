{pkgs, ...}: {
  home.file = {
    ".editorconfig".source = ./.editorconfig;
    ".hushlogin".source = ./.hushlogin;
    ".kube/config".source = ./.kube/config;
    ".kube/kubelogin.sh".source = ./.kube/kubelogin.sh;
    ".prettierrc".source = ./.prettierrc;
  };
}
