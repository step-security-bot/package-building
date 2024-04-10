#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "GoogleCloudPlatform/terraformer" \
    --pattern "terraformer-xenorchestra-linux-amd64" \
    --archive-path "" \
    --write-to-bin "terraformer-xenorchestra_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "GoogleCloudPlatform/terraformer" \
    --pattern "terraformer-xenorchestra-linux-arm64" \
    --archive-path "" \
    --write-to-bin "terraformer-xenorchestra_arm64" \
    ;
