#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "sigstore/cosign" \
    --pattern "cosign-linux-amd64" \
    --archive-path "" \
    --write-to-bin "cosign_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "sigstore/cosign" \
    --pattern "cosign-linux-arm64" \
    --archive-path "" \
    --write-to-bin "cosign_arm64" \
    ;
