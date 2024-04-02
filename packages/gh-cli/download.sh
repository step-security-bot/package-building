#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "cli/cli" \
    --pattern "GitHub CLI {{.Ver}} linux amd64" \
    --archive-path "" \
    --write-to-bin "gh_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "cli/cli" \
    --pattern "GitHub CLI {{.Ver}} linux arm64" \
    --archive-path "" \
    --write-to-bin "gh_arm64" \
    ;
