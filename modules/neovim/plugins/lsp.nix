{pkgs, ...}: {
  plugins.lsp = {
    enable = true;

    servers = {
      angularls = {
        enable = true;
      };
      ansiblels = {
        enable = true;
      };
      dockerls = {
        enable = true;
      };
      eslint = {
        enable = true;
      };
      helm_ls = {
        enable = true;
      };
      pyright = {
        enable = true;
      };
      ruff = {
        enable = true;
      };
      spectral = {
        enable = true;
      };
      terraformls = {
        enable = true;
      };
      yamlls = {
        enable = true;
      };
    };
  };
}
