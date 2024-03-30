#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "aquasecurity/trivy" \
    --pattern "trivy_{{.Ver}}_Linux-ARM64.{{.Ext}}" \
    --archive-path "trivy" \
    --write-to-bin "trivy_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "aquasecurity/trivy" \
    --pattern "trivy_{{.Ver}}_Linux-64bit.{{.Ext}}" \
    --archive-path "trivy" \
    --write-to-bin "trivy_arm64" \
    ;
