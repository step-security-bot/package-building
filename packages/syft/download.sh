#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "anchore/syft" \
    --pattern "syft_{{.Ver}}_linux_amd64.{{.Ext}}" \
    --archive-path "syft" \
    --write-to-bin "syft_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "anchore/syft" \
    --pattern "syft_{{.Ver}}_linux_arm64.{{.Ext}}" \
    --archive-path "syft" \
    --write-to-bin "syft_arm64" \
    ;
