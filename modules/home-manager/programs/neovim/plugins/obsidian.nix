{...}: {
  plugins.obsidian = {
    enable = true;
    settings = {
      legacy_commands = false;
      workspaces = [
        {
          name = "msueberkrueb";
          path = "~/vaults/msueberkrueb";
        }
      ];
    };
  };

  keymaps = [
    {
      action = "<cmd>Obsidian<CR>";
      key = "<leader>oo";
    }
    {
      action = "<cmd>Obsidian search<CR>";
      key = "<leader>of";
    }
    {
      action = "<cmd>Obsidian new<CR>";
      key = "<leader>on";
    }
    {
      action = "<cmd>Obsidian today<CR>";
      key = "<leader>od";
    }
  ];
}
