#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "nvidia/container-canary" \
    --pattern "canary_linux_amd64" \
    --archive-path "" \
    --write-to-bin "container-canary_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "nvidia/container-canary" \
    --pattern "canary_linux_arm64" \
    --archive-path "" \
    --write-to-bin "container-canary_arm64" \
    ;
