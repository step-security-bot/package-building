#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "infracost/infracost" \
    --pattern "infracost-linux-amd64.{{.Ext}}" \
    --archive-path "infracost" \
    --write-to-bin "infracost_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "infracost/infracost" \
    --pattern "infracost-linux-arm64.{{.Ext}}" \
    --archive-path "infracost" \
    --write-to-bin "infracost_arm64" \
    ;
