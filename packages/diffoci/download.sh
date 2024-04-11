#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "reproducible-containers/diffoci" \
    --pattern "diffoci-v{{.Ver}}.linux-amd64" \
    --archive-path "" \
    --write-to-bin "diffoci_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "reproducible-containers/diffoci" \
    --pattern "diffoci-v{{.Ver}}.linux-arm64" \
    --archive-path "" \
    --write-to-bin "diffoci_arm64" \
    ;
