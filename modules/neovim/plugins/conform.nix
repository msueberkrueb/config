{...}: {
  plugins.conform-nvim = {
    enable = true;

    settings = {
      formatters_by_ft = {
        css = [
          "prettierd"
        ];
        html = [
          "prettierd"
        ];
        javascript = [
          "prettierd"
        ];
        json = [
          "prettierd"
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
          "prettierd"
        ];
        yaml = [
          "prettierd"
        ];
      };
      format_on_save = {
        timeout_ms = 500;
        lsp_format = "fallback";
      };
    };
  };
}
