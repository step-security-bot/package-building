#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
download-asset get \
    --owner-repo "goph/licensei" \
    --pattern "licensei_linux_amd64.{{.Ext}}" \
    --archive-path "licensei" \
    --write-to-bin "licensei_amd64" \
    ;

# linux/arm64 (ARM64)
download-asset get \
    --owner-repo "goph/licensei" \
    --pattern "licensei_linux_arm64.{{.Ext}}" \
    --archive-path "licensei" \
    --write-to-bin "licensei_arm64" \
    ;
