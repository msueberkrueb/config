# Config

This repository manages my [Nix](https://nixos.org/) dotfiles.

## Setup

Usage of these configurations requires nix, which can be installed with the following command:

```sh
curl -fsSL https://install.determinate.systems/nix | sh -s -- install
```

>[!NOTE]
For full compatability with nix-darwin, the option to install the "determinate" installation must be declined!

Afterwards the repository can be cloned.

### Standalone

The standalone installation does not require anything except nix and home-manager and can be installed on pretty much every linux system.
However, one can not manage system-level configurations with the standalone installation.

#### Initial Installation

```sh
nix run home-manager/master -- switch --flake .#msueberkrueb
```

#### Updating

```sh
home-manager switch --flake .#msueberkrueb
```

## Update

As the `flake.lock` pins the dependencies, these must be updated regularly.

```sh
nix flake update
```
