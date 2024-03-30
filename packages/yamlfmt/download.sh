#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "google/yamlfmt" \
    --pattern "yamlfmt_{{.Ver}}_Linux_x86_64.{{.Ext}}" \
    --archive-path "yamlfmt" \
    --write-to-bin "yamlfmt_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "google/yamlfmt" \
    --pattern "yamlfmt_{{.Ver}}_Linux_arm64.{{.Ext}}" \
    --archive-path "yamlfmt" \
    --write-to-bin "yamlfmt_arm64" \
    ;
