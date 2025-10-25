{
  lib,
  config,
  pkgs,
  ...
}: let
  cfg = config.msueberkrueb.neovim;
in {
  options = {
    msueberkrueb.neovim.enable = lib.mkEnableOption "neovim";
  };

  config = lib.mkIf cfg.enable {
    programs.nixvim = {
      enable = true;

      defaultEditor = true;
      viAlias = true;
      vimAlias = true;

      globals = {
        mapleader = " ";
        transparent_enabled = true;
      };

      globalOpts = {
        conceallevel = 2;
        expandtab = true;
        inccommand = "split";
        relativenumber = true;
        scrolloff = 8;
        shiftwidth = 2;
        smartindent = true;
        tabstop = 2;
        updatetime = 500;
      };

      imports = [
        ./colorscheme.nix
        ./keymaps.nix
        ./plugins/plugins.nix
      ];
    };

    home.packages = with pkgs; [
      ripgrep
    ];
  };
}
