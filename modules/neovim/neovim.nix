{...}: {
  programs.nixvim = {
    enable = true;

    defaultEditor = true;
    viAlias = true;
    vimAlias = true;

    globals = {
      mapleader = " ";
    };

    globalOpts = {
      inccommand = "split";
      relativenumber = true;
      scrolloff = 8;
    };

    imports = [
      ./colorscheme.nix
      ./keymaps.nix
      ./plugins/conform.nix
      ./plugins/lsp.nix
      ./plugins/telescope.nix
      ./plugins/treesitter.nix
      ./plugins/web-devicons.nix
    ];
  };
}
