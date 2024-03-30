#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "minamijoyo/tfschema" \
    --pattern "tfschema_{{.Ver}}_linux_amd64.{{.Ext}}" \
    --archive-path "tfschema" \
    --write-to-bin "tfschema_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "minamijoyo/tfschema" \
    --pattern "tfschema_{{.Ver}}_linux_arm64.{{.Ext}}" \
    --archive-path "tfschema" \
    --write-to-bin "tfschema_arm64" \
    ;
