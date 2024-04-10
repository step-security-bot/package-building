#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "GoogleCloudPlatform/terraformer" \
    --pattern "terraformer-pagerduty-linux-amd64" \
    --archive-path "" \
    --write-to-bin "terraformer-pagerduty_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "GoogleCloudPlatform/terraformer" \
    --pattern "terraformer-pagerduty-linux-arm64" \
    --archive-path "" \
    --write-to-bin "terraformer-pagerduty_arm64" \
    ;
