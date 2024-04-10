#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "GoogleCloudPlatform/terraformer" \
    --pattern "terraformer-yandex-linux-amd64" \
    --archive-path "" \
    --write-to-bin "terraformer-yandex_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "GoogleCloudPlatform/terraformer" \
    --pattern "terraformer-yandex-linux-arm64" \
    --archive-path "" \
    --write-to-bin "terraformer-yandex_arm64" \
    ;
