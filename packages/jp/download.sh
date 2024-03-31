#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "jmespath-community/jp" \
    --pattern "jp-linux-amd64" \
    --archive-path "" \
    --write-to-bin "jp_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "jmespath-community/jp" \
    --pattern "jp-linux-arm64" \
    --archive-path "" \
    --write-to-bin "jp_arm64" \
    ;
