{...}: {
  programs.git = {
    enable = true;

    extraConfig = {
      branch.autoSetupRebase = "always";
      commit.gpgsign = true;
      core.sshCommand = "ssh.exe";
      gpg.format = "ssh";
      gpg.ssh.program = "/mnt/c/Users/msueberkrueb/AppData/Local/1Password/app/8/op-ssh-sign-wsl";

      pull.rebase = true;
      push.autoSetupRemote = true;

      user.name = "msueberkrueb";
      user.email = "88376203+msueberkrueb@users.noreply.github.com";
      user.signingkey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIP0RJSHaad8vStxJQ1n4pXNs1a2glcA6lM2DKYubRbEa";
    };
  };
}
