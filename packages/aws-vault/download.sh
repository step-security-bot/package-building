#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "99designs/aws-vault" \
    --pattern "aws-vault-linux-amd64" \
    --archive-path "" \
    --write-to-bin "aws-vault_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "99designs/aws-vault" \
    --pattern "aws-vault-linux-arm64" \
    --archive-path "" \
    --write-to-bin "aws-vault_arm64" \
    ;
