#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "gruntwork-io/cloud-nuke" \
    --pattern "cloud-nuke_linux_amd64" \
    --archive-path "" \
    --write-to-bin "cloud-nuke_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "gruntwork-io/cloud-nuke" \
    --pattern "cloud-nuke_linux_arm64" \
    --archive-path "" \
    --write-to-bin "cloud-nuke_arm64" \
    ;
