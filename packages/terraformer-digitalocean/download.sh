#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "GoogleCloudPlatform/terraformer" \
    --pattern "terraformer-digitalocean-linux-amd64" \
    --archive-path "" \
    --write-to-bin "terraformer-digitalocean_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "GoogleCloudPlatform/terraformer" \
    --pattern "terraformer-digitalocean-linux-arm64" \
    --archive-path "" \
    --write-to-bin "terraformer-digitalocean_arm64" \
    ;
