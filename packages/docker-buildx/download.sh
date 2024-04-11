#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "docker/buildx" \
    --pattern "buildx-v{{.Ver}}.linux-amd64" \
    --archive-path "" \
    --write-to-bin "buildx_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "docker/buildx" \
    --pattern "buildx-v{{.Ver}}.linux-arm64" \
    --archive-path "" \
    --write-to-bin "buildx_arm64" \
    ;
