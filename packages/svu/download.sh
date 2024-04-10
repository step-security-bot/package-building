#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "caarlos0/svu" \
    --pattern "svu_{{.Ver}}_linux_amd64.{{.Ext}}" \
    --archive-path "svu" \
    --write-to-bin "svu_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "caarlos0/svu" \
    --pattern "svu_{{.Ver}}_linux_arm64.{{.Ext}}" \
    --archive-path "svu" \
    --write-to-bin "svu_arm64" \
    ;
