#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "jqlang/jq" \
    --pattern "jq-linux-amd64" \
    --archive-path "" \
    --write-to-bin "jq_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "jqlang/jq" \
    --pattern "jq-linux-arm64" \
    --archive-path "" \
    --write-to-bin "jq_arm64" \
    ;
