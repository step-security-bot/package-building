#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "GoogleCloudPlatform/terraformer" \
    --pattern "terraformer-alicloud-linux-amd64" \
    --archive-path "" \
    --write-to-bin "terraformer-alicloud_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "GoogleCloudPlatform/terraformer" \
    --pattern "terraformer-alicloud-linux-arm64" \
    --archive-path "" \
    --write-to-bin "terraformer-alicloud_arm64" \
    ;
