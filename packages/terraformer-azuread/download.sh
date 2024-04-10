#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "GoogleCloudPlatform/terraformer" \
    --pattern "terraformer-azuread-linux-amd64" \
    --archive-path "" \
    --write-to-bin "terraformer-azuread_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "GoogleCloudPlatform/terraformer" \
    --pattern "terraformer-azuread-linux-arm64" \
    --archive-path "" \
    --write-to-bin "terraformer-azuread_arm64" \
    ;
