# Requirements

To use home-manager you need to install the nix cli:


# Installation

## WSL

If this configuration should be installed on a windows system, wsl needs to be installed and used.

```
wsl --install
```

Afterwards the windows terminal should be installed: https://aka.ms/terminal.

Then the JSON Config should be replaced with the windows-terminal.config.json.

## SSH-Key

To install this config an ssh-key should be configured:

```
ssh-keygen -t ed25519 -C "your_email@example.com" &&
eval "$(ssh-agent -s)" &&
ssh-add ~/.ssh/id_ed25519 &&
cat ~/.ssh/id_ed25519.pub
```

The content of the public key must be set as an authorization and as an signing key in the github settings.

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
