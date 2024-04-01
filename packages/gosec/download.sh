#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "securego/gosec" \
    --pattern "gosec_{{.Ver}}_linux_amd64.{{.Ext}}" \
    --archive-path "gosec" \
    --write-to-bin "gosec_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "securego/gosec" \
    --pattern "gosec_{{.Ver}}_linux_arm64.{{.Ext}}" \
    --archive-path "gosec" \
    --write-to-bin "gosec_arm64" \
    ;
