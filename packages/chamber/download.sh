#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "segmentio/chamber" \
    --pattern "chamber-v{{.Ver}}-linux-amd64" \
    --archive-path "" \
    --write-to-bin "chamber_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "segmentio/chamber" \
    --pattern "chamber-v{{.Ver}}-linux-arm64" \
    --archive-path "" \
    --write-to-bin "chamber_arm64" \
    ;
