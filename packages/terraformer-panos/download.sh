#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "GoogleCloudPlatform/terraformer" \
    --pattern "terraformer-panos-linux-amd64" \
    --archive-path "" \
    --write-to-bin "terraformer-panos_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "GoogleCloudPlatform/terraformer" \
    --pattern "terraformer-panos-linux-arm64" \
    --archive-path "" \
    --write-to-bin "terraformer-panos_arm64" \
    ;
