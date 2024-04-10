#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "GoogleCloudPlatform/terraformer" \
    --pattern "terraformer-okta-linux-amd64" \
    --archive-path "" \
    --write-to-bin "terraformer-okta_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "GoogleCloudPlatform/terraformer" \
    --pattern "terraformer-okta-linux-arm64" \
    --archive-path "" \
    --write-to-bin "terraformer-okta_arm64" \
    ;
