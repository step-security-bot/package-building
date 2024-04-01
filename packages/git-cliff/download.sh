#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64) glibc
download-asset get \
    --owner-repo "orhun/git-cliff" \
    --pattern "git-cliff-{{.Ver}}-x86_64-unknown-linux-gnu.{{.Ext}}" \
    --archive-path "git-cliff-{{.Ver}}/git-cliff" \
    --write-to-bin "git-cliff_amd64" \
    ;

# linux/arm64 (ARM64) glibc
download-asset get \
    --owner-repo "orhun/git-cliff" \
    --pattern "git-cliff-{{.Ver}}-aarch64-unknown-linux-gnu.{{.Ext}}" \
    --archive-path "git-cliff-{{.Ver}}/git-cliff" \
    --write-to-bin "git-cliff_arm64" \
    ;

# linux/amd64 (Intel64) musl
download-asset get \
    --owner-repo "orhun/git-cliff" \
    --pattern "git-cliff-{{.Ver}}-x86_64-unknown-linux-musl.{{.Ext}}" \
    --archive-path "git-cliff-{{.Ver}}/git-cliff" \
    --write-to-bin "git-cliff_musl_amd64" \
    ;

# linux/arm64 (ARM64) musl
download-asset get \
    --owner-repo "orhun/git-cliff" \
    --pattern "git-cliff-{{.Ver}}-aarch64-unknown-linux-musl.{{.Ext}}" \
    --archive-path "git-cliff-{{.Ver}}/git-cliff" \
    --write-to-bin "git-cliff_musl_arm64" \
    ;
