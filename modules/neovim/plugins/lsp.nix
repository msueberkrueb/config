{pkgs, ...}: {
  plugins.lsp = {
    enable = true;

    luaConfig.post = ''
      local lspconfig = require("lspconfig")
      local util = require("lspconfig.util")

      -- Deno LSP
      lspconfig.denols.setup({
        root_dir = util.root_pattern("deno.json", "deno.jsonc"),
        single_file_support = false,
      })

      -- TS LSP (skip if deno is present)
      lspconfig.ts_ls.setup({
        root_dir = function(fname)
          if util.root_pattern("deno.json", "deno.jsonc")(fname) then
            return nil
          end
          return util.root_pattern("package.json", "tsconfig.json")(fname)
        end,
        single_file_support = false,
      })
    '';

    servers = {
      angularls = {
        enable = true;
      };
      ansiblels = {
        enable = true;
      };
      denols = {
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
      ts_ls = {
        enable = true;
      };
      yamlls = {
        enable = true;
      };
    };
  };
}
