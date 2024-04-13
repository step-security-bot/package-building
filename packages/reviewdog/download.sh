#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "'northwood-labs/reviewdog" \
    --pattern "reviewdog_amd64" \
    --archive-path "" \
    --write-to-bin "reviewdog_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "'northwood-labs/reviewdog" \
    --pattern "reviewdog_arm64" \
    --archive-path "" \
    --write-to-bin "reviewdog_arm64" \
    ;
