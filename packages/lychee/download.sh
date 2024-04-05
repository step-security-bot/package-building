#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64) glibc
download-asset get \
    --owner-repo "lycheeverse/lychee" \
    --pattern "lychee-v{{.Ver}}-x86_64-unknown-linux-gnu.{{.Ext}}" \
    --archive-path "lychee" \
    --write-to-bin "lychee_glibc_amd64" \
    ;

# linux/arm64 (ARM64) glibc
download-asset get \
    --owner-repo "lycheeverse/lychee" \
    --pattern "lychee-v{{.Ver}}-aarch64-unknown-linux-gnu.{{.Ext}}" \
    --archive-path "lychee" \
    --write-to-bin "lychee_glibc_arm64" \
    ;

# linux/amd64 (Intel64) musl
download-asset get \
    --owner-repo "lycheeverse/lychee" \
    --pattern "lychee-v{{.Ver}}-x86_64-unknown-linux-musl.{{.Ext}}" \
    --archive-path "lychee" \
    --write-to-bin "lychee_musl_amd64" \
    ;

# linux/arm64 (ARM64) musl
# Need to build from source.
