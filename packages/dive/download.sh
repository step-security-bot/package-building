#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "wagoodman/dive" \
    --pattern "dive_{{.Ver}}_linux_amd64.{{.Ext}}" \
    --archive-path "dive" \
    --write-to-bin "dive_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "wagoodman/dive" \
    --pattern "dive_{{.Ver}}_linux_arm64.{{.Ext}}" \
    --archive-path "dive" \
    --write-to-bin "dive_arm64" \
    ;
