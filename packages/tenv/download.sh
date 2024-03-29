#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "tofuutils/tenv" \
    --pattern "tenv_v{{.Ver}}_Linux_x86_64.{{.Ext}}" \
    --archive-path "tenv" \
    --write-to-bin "tenv_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "tofuutils/tenv" \
    --pattern "tenv_v{{.Ver}}_Linux_arm64.{{.Ext}}" \
    --archive-path "tenv" \
    --write-to-bin "tenv_arm64" \
    ;
