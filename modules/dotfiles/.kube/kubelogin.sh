#!/bin/bash

exec kubectl oidc-login get-token --oidc-client-id=${K8S_OIDC_CLIENT_ID} --oidc-client-secret=${K8S_OIDC_CLIENT_SECRET} --oidc-issuer-url=${K8S_OIDC_ISSUER_URL}
