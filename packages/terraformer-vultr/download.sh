#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "GoogleCloudPlatform/terraformer" \
    --pattern "terraformer-vultr-linux-amd64" \
    --archive-path "" \
    --write-to-bin "terraformer-vultr_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "GoogleCloudPlatform/terraformer" \
    --pattern "terraformer-vultr-linux-arm64" \
    --archive-path "" \
    --write-to-bin "terraformer-vultr_arm64" \
    ;
