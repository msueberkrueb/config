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

### 1Password Setup

#### Secrets Setup (1Pasword CLI WSL)

Install the 1Password CLI on the Windows Machine:

```
winget install 1password-cli
```

Then there is an alias configured `op = op.exe` so that the op command automatically uses the windows 1Password.
Caution: The CLI must be enabled in the desktop app!

#### SSH Key Setup (1Password WSL)

Setup the SSH-agent from 1Password according to their [documentation](https://developer.1password.com/docs/ssh/get-started/).

Afterwards the command `ssh -T git@github.com` must be executed, so that ssh fingerprint can be accepted.
