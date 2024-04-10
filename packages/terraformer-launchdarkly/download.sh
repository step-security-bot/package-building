#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "GoogleCloudPlatform/terraformer" \
    --pattern "terraformer-launchdarkly-linux-amd64" \
    --archive-path "" \
    --write-to-bin "terraformer-launchdarkly_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "GoogleCloudPlatform/terraformer" \
    --pattern "terraformer-launchdarkly-linux-arm64" \
    --archive-path "" \
    --write-to-bin "terraformer-launchdarkly_arm64" \
    ;
