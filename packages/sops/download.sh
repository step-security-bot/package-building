#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "getsops/sops" \
    --pattern "sops-v{{.Ver}}.linux.amd64" \
    --archive-path "" \
    --write-to-bin "sops_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "getsops/sops" \
    --pattern "sops-v{{.Ver}}.linux.arm64" \
    --archive-path "" \
    --write-to-bin "sops_arm64" \
    ;
