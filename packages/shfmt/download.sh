#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "mvdan/sh" \
    --pattern "shfmt_v{{.Ver}}_linux_amd64" \
    --archive-path "" \
    --write-to-bin "shfmt_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "mvdan/sh" \
    --pattern "shfmt_v{{.Ver}}_linux_arm64" \
    --archive-path "" \
    --write-to-bin "shfmt_arm64" \
    ;
