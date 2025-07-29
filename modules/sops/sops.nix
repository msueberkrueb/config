{
  lib,
  config,
  ...
}: {
  sops = {
    defaultSopsFormat = "yaml";
    age.sshKeyPaths = ["/home/user/.ssh/id_ed25519"];

    secrets.kube-config = {
      format = "binary";
      sopsFile = builtins.path {
        path = ../dotfiles/.kube/config;
      };
      key = "";
    };
  };

  home.activation.linkKubeConfig = lib.hm.dag.entryAfter ["writeBoundary"] ''
    mkdir -p "$HOME/.kube"
    cp "${config.sops.secrets.kube-config.path}" "$HOME/.kube/config"
    chmod 600 "$HOME/.kube/config"
  '';
}
