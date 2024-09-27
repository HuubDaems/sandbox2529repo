#!/usr/bin/env bash

set -x

oc -n openshift-pipelines create secret generic pipelines-as-code-secret \
        --from-literal github-private-key="$(cat ../sandbox2529.2024-09-27.private-key.pem)" \
        --from-literal github-application-id="1006839" \
        --from-literal webhook.secret="$(cat ../secret.txt)"

