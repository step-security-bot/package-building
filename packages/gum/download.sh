#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "charmbracelet/gum" \
    --pattern "gum_{{.Ver}}_Linux_x86_64.{{.Ext}}" \
    --archive-path "gum" \
    --write-to-bin "gum_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "charmbracelet/gum" \
    --pattern "gum_{{.Ver}}_Linux_arm64.{{.Ext}}" \
    --archive-path "gum" \
    --write-to-bin "gum_arm64" \
    ;
