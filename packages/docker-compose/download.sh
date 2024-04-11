#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "docker/compose" \
    --pattern "docker-compose-linux-x86_64" \
    --archive-path "" \
    --write-to-bin "compose_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "docker/compose" \
    --pattern "docker-compose-linux-aarch64" \
    --archive-path "" \
    --write-to-bin "compose_arm64" \
    ;
