#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "jgm/pandoc" \
    --pattern "pandoc-{{.Ver}}-linux-amd64.{{.Ext}}" \
    --archive-path "pandoc-{{.Ver}}/bin/pandoc" \
    --write-to-bin "pandoc_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "jgm/pandoc" \
    --pattern "pandoc-{{.Ver}}-linux-arm64.{{.Ext}}" \
    --archive-path "pandoc-{{.Ver}}/bin/pandoc" \
    --write-to-bin "pandoc_arm64" \
    ;
