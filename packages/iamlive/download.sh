#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "iann0036/iamlive" \
    --pattern "iamlive-v{{.Ver}}-linux-amd64.{{.Ext}}" \
    --archive-path "" \
    --write-to-bin "iamlive_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "iann0036/iamlive" \
    --pattern "iamlive-v{{.Ver}}-linux-arm64.{{.Ext}}" \
    --archive-path "" \
    --write-to-bin "iamlive_arm64" \
    ;
