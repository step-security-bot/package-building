#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "segmentio/golines" \
    --pattern "golines_{{.Ver}}_linux_amd64.{{.Ext}}" \
    --archive-path "golines_{{.Ver}}_linux_amd64/golines" \
    --write-to-bin "golines_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "segmentio/golines" \
    --pattern "golines_{{.Ver}}_linux_arm64.{{.Ext}}" \
    --archive-path "golines_{{.Ver}}_linux_arm64/golines" \
    --write-to-bin "golines_arm64" \
    ;
