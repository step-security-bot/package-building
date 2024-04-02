#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "editorconfig-checker/editorconfig-checker" \
    --pattern "ec-linux-amd64.{{.Ext}}" \
    --archive-path "bin/ec-linux-amd64" \
    --write-to-bin "editorconfig-checker_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "editorconfig-checker/editorconfig-checker" \
    --pattern "ec-linux-arm64.{{.Ext}}" \
    --archive-path "bin/ec-linux-arm64" \
    --write-to-bin "editorconfig-checker_arm64" \
    ;
