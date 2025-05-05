export GH_TOKEN=$(op read "op://private/GitHub PAT/password" --account my.1password.com)
export K8S_OIDC_CLIENT_ID=$(op read "op://private/K8s OIDC/oidc-client-id" --account freenetgroupit.1password.com)
export K8S_OIDC_CLIENT_SECRET=$(op read "op://private/K8s OIDC/oidc-client-secret" --account freenetgroupit.1password.com)
export K8S_OIDC_ISSUER_URL=$(op read "op://private/K8s OIDC/oidc-issuer-url" --account freenetgroupit.1password.com)
