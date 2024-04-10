#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "GoogleCloudPlatform/terraformer" \
    --pattern "terraformer-opsgenie-linux-amd64" \
    --archive-path "" \
    --write-to-bin "terraformer-opsgenie_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "GoogleCloudPlatform/terraformer" \
    --pattern "terraformer-opsgenie-linux-arm64" \
    --archive-path "" \
    --write-to-bin "terraformer-opsgenie_arm64" \
    ;
