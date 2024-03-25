{ config, pkgs, ... }:

{
    home.username = "msueberkrueb";
    home.homeDirectory = "/home/msueberkrueb";
    home.stateVersion = "23.11";

    programs.git = {
        enable = true;
        userEmail = "mike.sueberkrueb@freenet.ag";
        userName = "msueberkrueb";

        extraConfig = {
            commit.gpgsign = true;
            gpg.format = "ssh";
            push.autoSetupRemote = true;
            user.signingkey = "~/.ssh/id_ed25519.pub";
        };
    };

    programs.neovim = {
        enable = true;

        viAlias = true;
        vimAlias = true;
        vimdiffAlias = true;

        plugins = with pkgs.vimPlugins; [
            {
                plugin = catppuccin-nvim;
                type = "lua";
                config = builtins.readFile ./nvim/plugins/catppuccin.lua;
            }
            {
                plugin = vim-fugitive;
                type = "lua";
                config = builtins.readFile ./nvim/plugins/fugitive.lua;
            }
            {
                plugin = harpoon;
                type = "lua";
                config = builtins.readFile ./nvim/plugins/harpoon.lua;
            }
            {
                plugin = nvim-lspconfig;
                type = "lua";
                config = builtins.readFile ./nvim/plugins/lsp.lua;
            }
            {
                plugin = telescope-nvim;
                type = "lua";
                config = builtins.readFile ./nvim/plugins/telescope.lua;
            }
            {
                plugin = nvim-treesitter;
                type = "lua";
                config = builtins.readFile ./nvim/plugins/treesitter.lua;
            }
            {
                plugin = undotree;
                type = "lua";
                config = builtins.readFile ./nvim/plugins/undotree.lua;
            }
        ];

        extraLuaConfig = ''
            ${builtins.readFile ./nvim/remap.lua}
            ${builtins.readFile ./nvim/set.lua}
        '';
    };

    programs.tmux = {
        enable = true;

        plugins = with pkgs.tmuxPlugins; [
            {
                plugin = catppuccin;
                extraConfig = builtins.readFile ./tmux/plugins/catppuccin.conf;
            }
        ];

        extraConfig = ''
            ${builtins.readFile ./tmux/tmux.conf}
        '';
    };

    programs.home-manager.enable = true;
}
