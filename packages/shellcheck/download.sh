#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "koalaman/shellcheck" \
    --pattern "shellcheck-v{{.Ver}}.linux.x86_64.{{.Ext}}" \
    --archive-path "shellcheck-v{{.Ver}}/shellcheck" \
    --write-to-bin "shellcheck_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "koalaman/shellcheck" \
    --pattern "shellcheck-v{{.Ver}}.linux.aarch64.{{.Ext}}" \
    --archive-path "shellcheck-v{{.Ver}}/shellcheck" \
    --write-to-bin "shellcheck_arm64" \
    ;
