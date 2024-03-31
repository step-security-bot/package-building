#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "goreleaser/nfpm" \
    --pattern "nfpm_{{.Ver}}_Linux_x86_64.{{.Ext}}" \
    --archive-path "nfpm" \
    --write-to-bin "nfpm_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "goreleaser/nfpm" \
    --pattern "nfpm_{{.Ver}}_Linux_arm64.{{.Ext}}" \
    --archive-path "nfpm" \
    --write-to-bin "nfpm_arm64" \
    ;
