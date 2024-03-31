#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "gohugoio/hugo" \
    --pattern "hugo_{{.Ver}}_linux-amd64.{{.Ext}}" \
    --archive-path "hugo" \
    --write-to-bin "hugo_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "gohugoio/hugo" \
    --pattern "hugo_{{.Ver}}_linux-arm64.{{.Ext}}" \
    --archive-path "hugo" \
    --write-to-bin "hugo_arm64" \
    ;
