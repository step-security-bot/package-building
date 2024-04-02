#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "rhysd/actionlint" \
    --pattern "actionlint_{{.Ver}}_linux_amd64.{{.Ext}}" \
    --archive-path "actionlint" \
    --write-to-bin "actionlint_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "rhysd/actionlint" \
    --pattern "actionlint_{{.Ver}}_linux_arm64.{{.Ext}}" \
    --archive-path "actionlint" \
    --write-to-bin "actionlint_arm64" \
    ;
