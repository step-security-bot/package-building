#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "evilmartians/lefthook" \
    --pattern "lefthook_{{.Ver}}_Linux_x86_64" \
    --archive-path "" \
    --write-to-bin "lefthook_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "evilmartians/lefthook" \
    --pattern "lefthook_{{.Ver}}_Linux_aarch64" \
    --archive-path "" \
    --write-to-bin "lefthook_arm64" \
    ;
