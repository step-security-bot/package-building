#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "trufflesecurity/driftwood" \
    --pattern "driftwood_{{.Ver}}_linux_amd64.{{.Ext}}" \
    --archive-path "driftwood" \
    --write-to-bin "driftwood_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "trufflesecurity/driftwood" \
    --pattern "driftwood_{{.Ver}}_linux_arm64.{{.Ext}}" \
    --archive-path "driftwood" \
    --write-to-bin "driftwood_arm64" \
    ;
