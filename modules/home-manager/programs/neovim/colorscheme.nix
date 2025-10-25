{...}: {
  colorschemes.catppuccin = {
    enable = true;

    settings = {
      background.dark = "mocha";
      integrations = {
        cmp = true;
        treesitter = true;
        telescope = false;
      };
    };
  };
}
