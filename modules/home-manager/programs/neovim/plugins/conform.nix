{
  lib,
  pkgs,
  ...
}: {
  plugins.conform-nvim.enable = true;

  plugins.conform-nvim.settings = {
    formatters = {
      alejandra.command = lib.getExe pkgs.alejandra;
      biome.command = lib.getExe pkgs.biome;
      prettierd.command = lib.getExe pkgs.prettierd;
      ruff.command = lib.getExe pkgs.ruff;
      yamlfmt.command = lib.getExe pkgs.yamlfmt;
    };

    formatters_by_ft = {
      css = [
        "biome"
      ];
      html = [
        "biome"
      ];
      javascript = [
        "biome"
      ];
      json = [
        "biome"
      ];
      markdown = [
        "prettierd"
      ];
      nix = [
        "alejandra"
      ];
      python = [
        "ruff"
      ];
      typescript = [
        "biome"
      ];
      yaml = [
        "yamlfmt"
      ];
    };

    format_on_save = {
      timeout_ms = 1000;
      lsp_format = "fallback";
    };
  };
}
