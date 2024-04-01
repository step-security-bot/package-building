#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "hadolint/hadolint" \
    --pattern "hadolint-Linux-x86_64" \
    --archive-path "" \
    --write-to-bin "hadolint_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "hadolint/hadolint" \
    --pattern "hadolint-Linux-arm64" \
    --archive-path "" \
    --write-to-bin "hadolint_arm64" \
    ;
