#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "GoogleCloudPlatform/terraformer" \
    --pattern "terraformer-mikrotik-linux-amd64" \
    --archive-path "" \
    --write-to-bin "terraformer-mikrotik_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "GoogleCloudPlatform/terraformer" \
    --pattern "terraformer-mikrotik-linux-arm64" \
    --archive-path "" \
    --write-to-bin "terraformer-mikrotik_arm64" \
    ;
