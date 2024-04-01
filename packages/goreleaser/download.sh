#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "goreleaser/goreleaser" \
    --pattern "goreleaser_Linux_x86_64.{{.Ext}}" \
    --archive-path "goreleaser" \
    --write-to-bin "goreleaser_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "goreleaser/goreleaser" \
    --pattern "goreleaser_Linux_arm64.{{.Ext}}" \
    --archive-path "goreleaser" \
    --write-to-bin "goreleaser_arm64" \
    ;
