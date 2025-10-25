{...}: {
  plugins.web-devicons.enable = true;

  plugins.telescope = {
    enable = true;

    keymaps = {
      "<leader>f" = {
        action = "git_files";
        options = {
          desc = "Telescope Git Files";
        };
      };
      "<leader>g" = {
        action = "live_grep";
        options = {
          desc = "Telescope Live Grep";
        };
      };
    };

    settings = {
      highlightTheme = "catppuccin";
    };
  };
}
