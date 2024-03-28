{ config, pkgs, ... }:

{
    home = {
        username = "msueberkrueb";
        homeDirectory = "/home/msueberkrueb";
        stateVersion = "23.11";
        packages = with pkgs; [
            actionlint
            alejandra
            biome
            black
            editorconfig-checker
            hadolint
            mypy
            statix
            stylua
            python311Packages.cfn-lint
        ];
    };

    programs = {
        git = {
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

        neovim = {
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
                    plugin = harpoon;
                    type = "lua";
                    config = builtins.readFile ./nvim/plugins/harpoon.lua;
                }
                {
                    plugin = lsp_lines-nvim;
                    type = "lua";
                    config = builtins.readFile ./nvim/plugins/lsp-lines.lua;
                    }
                {
                    plugin = none-ls-nvim;
                    type = "lua";
                    config = builtins.readFile ./nvim/plugins/none-ls.lua;
                }
                {
                    plugin = nvim-treesitter;
                    type = "lua";
                    config = builtins.readFile ./nvim/plugins/treesitter.lua;
                }
                {
                    plugin = telescope-nvim;
                    type = "lua";
                    config = builtins.readFile ./nvim/plugins/telescope.lua;
                }
                {
                    plugin = undotree;
                    type = "lua";
                    config = builtins.readFile ./nvim/plugins/undotree.lua;
                }
                {
                    plugin = vim-fugitive;
                    type = "lua";
                    config = builtins.readFile ./nvim/plugins/fugitive.lua;
                }
            ];

            extraLuaConfig = ''
                ${builtins.readFile ./nvim/remap.lua}
                ${builtins.readFile ./nvim/set.lua}
            '';
        };

        tmux = {
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

        home-manager.enable = true;
    };
}
