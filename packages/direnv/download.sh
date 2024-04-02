#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "direnv/direnv" \
    --pattern "direnv.linux-amd64" \
    --archive-path "" \
    --write-to-bin "direnv_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "direnv/direnv" \
    --pattern "direnv.linux-arm64" \
    --archive-path "" \
    --write-to-bin "direnv_arm64" \
    ;
