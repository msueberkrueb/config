# Installation

## WSL

If this configuration should be installed on a windows system, wsl needs to be installed and used.

```
wsl --install
```

Afterwards the windows terminal should be installed: https://aka.ms/terminal.

Then the JSON Config should be replaced with the windows-terminal.config.json.

## SSH-Key

The SSH-Key setup runs via 1Passwords SSH Integration. Therefore 1Password has to be installed and the [1Password SSH-Agent](https://developer.1password.com/docs/ssh/get-started/#turn-on-the-ssh-agent-in-1password) needs to be configured.

## Nix

Installing nix can be done with the following command:

```
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```

## Home-Manager

The initial installation of this configuration can be done with the following command:

```
git clone git@github.com:msueberkrueb/config.git ~/.config/home-manager &&
nix run home-manager/release-23.11 switch
```

Updating an already present configuration is done via another command:

```
cd ~/.config/home-manager &&
git pull &&
nix run home-manager/release-23.11 switch
```

## Font

The configured font is provided in this repository:
```
MesloLGMDZNerdFontMono-Regular.ttf
```

## Theme

The catppuccin theme is not only used for tmux and neovim, but also for the following applications:

- https://github.com/catppuccin/aseprite
- https://github.com/catppuccin/chrome
- https://github.com/catppuccin/home-assistant
- https://github.com/catppuccin/godot
- https://github.com/catppuccin/obsidian
- https://github.com/catppuccin/userstyles/tree/main/styles/hoppscotch
- https://github.com/catppuccin/vimium
