#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "GoogleCloudPlatform/terraformer" \
    --pattern "terraformer-commercetools-linux-amd64" \
    --archive-path "" \
    --write-to-bin "terraformer-commercetools_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "GoogleCloudPlatform/terraformer" \
    --pattern "terraformer-commercetools-linux-arm64" \
    --archive-path "" \
    --write-to-bin "terraformer-commercetools_arm64" \
    ;
