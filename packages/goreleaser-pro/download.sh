#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --verbose \
    --owner-repo "goreleaser/goreleaser-pro" \
    --pattern "goreleaser-pro_Linux_x86_64.{{.Ext}}" \
    --archive-path "goreleaser" \
    --write-to-bin "goreleaser-pro_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --verbose \
    --owner-repo "goreleaser/goreleaser-pro" \
    --pattern "goreleaser-pro_Linux_arm64.{{.Ext}}" \
    --archive-path "goreleaser" \
    --write-to-bin "goreleaser-pro_arm64" \
    ;
