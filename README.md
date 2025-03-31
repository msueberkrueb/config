# Config

## Installation

This configuration is intended for a nix [home-manager](https://github.com/nix-community/home-manager) setup in WSL.

### WSL Setup

```bash
wsl --install
```

### Nix Setup

```bash
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```

### Home-Manager Setup

```bash
git clone https://github.com/msueberkrueb/config.git ~/.config/home-manager &&
nix run home-manager/master switch
```

### SSH Key Setup (1Password WSL)

Setup the SSH-agent from 1Password according to their [documentation](https://developer.1password.com/docs/ssh/get-started/).

Afterwards the command `ssh -T git@github.com` must be executed, so that ssh fingerprint can be accepted.
