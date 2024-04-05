#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "charmbracelet/glow" \
    --pattern "glow_Linux_x86_64.{{.Ext}}" \
    --archive-path "glow" \
    --write-to-bin "glow_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "charmbracelet/glow" \
    --pattern "glow_Linux_arm64.{{.Ext}}" \
    --archive-path "glow" \
    --write-to-bin "glow_arm64" \
    ;
