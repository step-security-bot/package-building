#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "termkit/gama" \
    --pattern "gama-linux-amd64" \
    --archive-path "" \
    --write-to-bin "gama_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "termkit/gama" \
    --pattern "gama-linux-arm64" \
    --archive-path "" \
    --write-to-bin "gama_arm64" \
    ;
