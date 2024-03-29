#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "terraform-docs/terraform-docs" \
    --pattern "terraform-docs-v{{.Ver}}-linux-amd64.{{.Ext}}" \
    --archive-path "terraform-docs" \
    --write-to-bin "terraform-docs_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "terraform-docs/terraform-docs" \
    --pattern "terraform-docs-v{{.Ver}}-linux-arm64.{{.Ext}}" \
    --archive-path "terraform-docs" \
    --write-to-bin "terraform-docs_arm64" \
    ;
