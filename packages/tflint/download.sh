#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "terraform-linters/tflint" \
    --pattern "tflint_linux_amd64.{{.Ext}}" \
    --archive-path "tflint" \
    --write-to-bin "tflint_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "terraform-linters/tflint" \
    --pattern "tflint_linux_arm64.{{.Ext}}" \
    --archive-path "tflint" \
    --write-to-bin "tflint_arm64" \
    ;
