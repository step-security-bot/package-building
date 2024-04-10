#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "GoogleCloudPlatform/terraformer" \
    --pattern "terraformer-octopusdeploy-linux-amd64" \
    --archive-path "" \
    --write-to-bin "terraformer-octopusdeploy_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "GoogleCloudPlatform/terraformer" \
    --pattern "terraformer-octopusdeploy-linux-arm64" \
    --archive-path "" \
    --write-to-bin "terraformer-octopusdeploy_arm64" \
    ;
