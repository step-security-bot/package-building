#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "orlangure/gocovsh" \
    --pattern "gocovsh_{{.Ver}}_linux_amd64.{{.Ext}}" \
    --archive-path "gocovsh" \
    --write-to-bin "gocovsh_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "orlangure/gocovsh" \
    --pattern "gocovsh_{{.Ver}}_linux_arm64.{{.Ext}}" \
    --archive-path "gocovsh" \
    --write-to-bin "gocovsh_arm64" \
    ;
