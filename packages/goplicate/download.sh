#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "ilaif/goplicate" \
    --pattern "goplicate_{{.Ver}}_Linux_x86_64.{{.Ext}}" \
    --archive-path "goplicate" \
    --write-to-bin "goplicate_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "ilaif/goplicate" \
    --pattern "goplicate_{{.Ver}}_Linux_arm64.{{.Ext}}" \
    --archive-path "goplicate" \
    --write-to-bin "goplicate_arm64" \
    ;
