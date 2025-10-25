{...}: {
  plugins.lsp = {
    enable = true;

    servers.dockerls.enable = true;
    servers.helm_ls.enable = true;
    servers.nixd.enable = true;
    servers.terraformls.enable = true;
    servers.ts_ls.enable = true;
    servers.yamlls.enable = true;
  };
}
