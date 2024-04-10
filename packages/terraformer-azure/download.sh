#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "GoogleCloudPlatform/terraformer" \
    --pattern "terraformer-azure-linux-amd64" \
    --archive-path "" \
    --write-to-bin "terraformer-azure_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "GoogleCloudPlatform/terraformer" \
    --pattern "terraformer-azure-linux-arm64" \
    --archive-path "" \
    --write-to-bin "terraformer-azure_arm64" \
    ;
