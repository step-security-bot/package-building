#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "google/osv-scanner" \
    --pattern "osv-scanner_linux_amd64" \
    --archive-path "" \
    --write-to-bin "osv-scanner_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "google/osv-scanner" \
    --pattern "osv-scanner_linux_arm64" \
    --archive-path "" \
    --write-to-bin "osv-scanner_arm64" \
    ;
