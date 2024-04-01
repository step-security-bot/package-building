#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "golangci/golangci-lint" \
    --pattern "golangci-lint-{{.Ver}}-linux-amd64.{{.Ext}}" \
    --archive-path "golangci-lint-{{.Ver}}-linux-amd64/golangci-lint" \
    --write-to-bin "golangci-lint_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "golangci/golangci-lint" \
    --pattern "golangci-lint-{{.Ver}}-linux-arm64.{{.Ext}}" \
    --archive-path "golangci-lint-{{.Ver}}-linux-amd64/golangci-lint" \
    --write-to-bin "golangci-lint_arm64" \
    ;
