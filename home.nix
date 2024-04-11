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
        bash = {
            enable = true;
            bashrcExtra = ''
                PS1='\[\033[01;32m\]\u\[\033[01;34m\]\w\[\033[00m\]\$'
            '';
            shellAliases = {
                ssh = "ssh.exe";
                ssh-add = "ssh-add.exe";
            };
        };

        git = {
            enable = true;
            userEmail = "mike.sueberkrueb@freenet.ag";
            userName = "msueberkrueb";

            extraConfig = {
                commit.gpgsign = true;
                core.sshCommand = "ssh.exe";
                gpg.format = "ssh";
                gpg.ssh.program = "/mnt/c/Users/msueberkrueb/AppData/Local/1Password/app/8/op-ssh-sign-wsl";
                push.autoSetupRemote = true;
                user.signingkey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIP0RJSHaad8vStxJQ1n4pXNs1a2glcA6lM2DKYubRbEa";
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
