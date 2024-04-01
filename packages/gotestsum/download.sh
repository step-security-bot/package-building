#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "gotestyourself/gotestsum" \
    --pattern "gotestsum_{{.Ver}}_linux_amd64.{{.Ext}}" \
    --archive-path "gotestsum" \
    --write-to-bin "gotestsum_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "gotestyourself/gotestsum" \
    --pattern "gotestsum_{{.Ver}}_linux_arm64.{{.Ext}}" \
    --archive-path "gotestsum" \
    --write-to-bin "gotestsum_arm64" \
    ;
