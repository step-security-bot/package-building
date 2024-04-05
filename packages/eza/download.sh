#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64) glibc
download-asset get \
    --owner-repo "eza-community/eza" \
    --pattern "eza_x86_64-unknown-linux-gnu.{{.Ext}}" \
    --archive-path "eza" \
    --write-to-bin "eza_glibc_amd64" \
    ;

# linux/arm64 (ARM64) glibc
download-asset get \
    --owner-repo "eza-community/eza" \
    --pattern "eza_aarch64-unknown-linux-gnu.{{.Ext}}" \
    --archive-path "eza" \
    --write-to-bin "eza_glibc_arm64" \
    ;

# Already exists in the Alpine Linux repositories.
