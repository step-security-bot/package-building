#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "stefanlogue/meteor" \
    --pattern "meteor-linux-amd64" \
    --archive-path "" \
    --write-to-bin "meteor_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "stefanlogue/meteor" \
    --pattern "meteor-linux-arm64" \
    --archive-path "" \
    --write-to-bin "meteor_arm64" \
    ;
