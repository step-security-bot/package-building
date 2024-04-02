#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "cli/cli" \
    --pattern "gh_{{.Ver}}_linux_amd64.{{.Ext}}" \
    --archive-path "gh_{{.Ver}}_linux_amd64/bin/gh" \
    --write-to-bin "gh_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "cli/cli" \
    --pattern "gh_{{.Ver}}_linux_arm64.{{.Ext}}" \
    --archive-path "gh_{{.Ver}}_linux_arm64/bin/gh" \
    --write-to-bin "gh_arm64" \
    ;
