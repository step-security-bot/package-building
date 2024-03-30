#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "trufflesecurity/trufflehog" \
    --pattern "trufflehog_{{.Ver}}_linux_amd64.{{.Ext}}" \
    --archive-path "trufflehog" \
    --write-to-bin "trufflehog_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "trufflesecurity/trufflehog" \
    --pattern "trufflehog_{{.Ver}}_linux_arm64.{{.Ext}}" \
    --archive-path "trufflehog" \
    --write-to-bin "trufflehog_arm64" \
    ;
