#!/usr/bin/env bash
set -euo pipefail
# https://docs.aws.amazon.com/systems-manager/latest/userguide/manually-install-ssm-agent-linux.html

# shellcheck disable=2154
mkdir -p "${GITHUB_WORKSPACE}/packages/${PKG_NAME}/dist"

# linux/amd64 (Intel64) RPM
# shellcheck disable=2154
wget "https://s3.amazonaws.com/session-manager-downloads/plugin/${PKG_VER}.0/linux_64bit/session-manager-plugin.rpm" \
    --output-document "${GITHUB_WORKSPACE}/packages/${PKG_NAME}/dist/${PKG_NAME}-${PKG_VER}-1.x86_64.rpm"

# linux/arm64 (ARM64) RPM
# shellcheck disable=2154
wget "https://s3.amazonaws.com/session-manager-downloads/plugin/${PKG_VER}.0/linux_arm64/session-manager-plugin.rpm" \
    --output-document "${GITHUB_WORKSPACE}/packages/${PKG_NAME}/dist/${PKG_NAME}-${PKG_VER}-1.aarch64.rpm"

# linux/amd64 (Intel64) DEB
# shellcheck disable=2154
wget "https://s3.amazonaws.com/session-manager-downloads/plugin/${PKG_VER}.0/ubuntu_64bit/session-manager-plugin.deb" \
    --output-document "${GITHUB_WORKSPACE}/packages/${PKG_NAME}/dist/${PKG_NAME}_${PKG_VER}-1_amd64.deb"

# linux/arm64 (ARM64) DEB
# shellcheck disable=2154
wget "https://s3.amazonaws.com/session-manager-downloads/plugin/${PKG_VER}.0/ubuntu_arm64/session-manager-plugin.deb" \
    --output-document "${GITHUB_WORKSPACE}/packages/${PKG_NAME}/dist/${PKG_NAME}_${PKG_VER}-1_arm64.deb"
