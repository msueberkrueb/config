{...}: {
  plugins.telescope = {
    enable = true;

    keymaps = {
      "<leader>f" = {
        action = "git_files";
        options = {
          desc = "Telescope Git Files";
        };
      };
      "<leader>fg" = {
        action = "live_grep";
        options = {
          desc = "Telescope Live Grep";
        };
      };
    };
  };
}
