#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "junegunn/fzf" \
    --pattern "fzf-{{.Ver}}-linux_amd64.{{.Ext}}" \
    --archive-path "fzf" \
    --write-to-bin "fzf_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "junegunn/fzf" \
    --pattern "fzf-{{.Ver}}-linux_arm64.{{.Ext}}" \
    --archive-path "fzf" \
    --write-to-bin "fzf_arm64" \
    ;
