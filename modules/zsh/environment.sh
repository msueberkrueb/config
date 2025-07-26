if [ ! -f ~/.env ]; then

cat << EOF > ~/.env
GH_TOKEN=$(op read "op://private/GitHub PAT/password" --account my.1password.com)
K8S_OIDC_CLIENT_ID=$(op read "op://private/K8s OIDC/oidc-client-id" --account freenetgroupit.1password.com)
K8S_OIDC_CLIENT_SECRET=$(op read "op://private/K8s OIDC/oidc-client-secret" --account freenetgroupit.1password.com)
K8S_OIDC_ISSUER_URL=$(op read "op://private/K8s OIDC/oidc-issuer-url" --account freenetgroupit.1password.com)
EOF

# Setup SOPS key
mkdir -p ~/.config/sops/age
op read "op://private/SSH Key/private key?ssh-format=openssh" --account my.1password.com > ~/.config/sops/age/ssh-private-key
nix run nixpkgs#ssh-to-age -- -private-key -i ~/.config/sops/age/ssh-private-key > ~/.config/sops/age/keys.txt
SOPS_PUBLIC_KEY=$(nix shell nixpkgs#age -c age-keygen -y ~/.config/sops/age/keys.txt)
rm ~/.config/sops/age/ssh-private-key
fi

set -a; source ~/.env; set +a
