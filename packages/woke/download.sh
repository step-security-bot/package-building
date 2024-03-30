#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "get-woke/woke" \
    --pattern "woke-{{.Ver}}-linux-amd64.{{.Ext}}" \
    --archive-path "woke" \
    --write-to-bin "woke_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "get-woke/woke" \
    --pattern "woke-{{.Ver}}-linux-arm64.{{.Ext}}" \
    --archive-path "woke" \
    --write-to-bin "woke_arm64" \
    ;
