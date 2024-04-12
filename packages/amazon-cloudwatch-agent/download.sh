#!/usr/bin/env bash
set -euo pipefail

# shellcheck disable=2154
mkdir -p "${GITHUB_WORKSPACE}/packages/${PKG_NAME}/dist"

# linux/amd64 (Intel64) RPM
# shellcheck disable=2154
wget "https://amazoncloudwatch-agent-us-east-2.s3.us-east-2.amazonaws.com/amazon_linux/amd64/${PKG_VER}/amazon-cloudwatch-agent.rpm" \
    --output-document "${GITHUB_WORKSPACE}/packages/${PKG_NAME}/dist/${PKG_NAME}-${PKG_VER}-1.x86_64.rpm"

# linux/arm64 (ARM64) RPM
# shellcheck disable=2154
wget "https://amazoncloudwatch-agent-us-east-2.s3.us-east-2.amazonaws.com/amazon_linux/arm64/${PKG_VER}/amazon-cloudwatch-agent.rpm" \
    --output-document "${GITHUB_WORKSPACE}/packages/${PKG_NAME}/dist/${PKG_NAME}-${PKG_VER}-1.aarch64.rpm"

# linux/amd64 (Intel64) DEB
# shellcheck disable=2154
wget "https://amazoncloudwatch-agent-us-east-2.s3.us-east-2.amazonaws.com/amazon_linux/amd64/${PKG_VER}/amazon-cloudwatch-agent.deb" \
    --output-document "${GITHUB_WORKSPACE}/packages/${PKG_NAME}/dist/${PKG_NAME}_${PKG_VER}-1_amd64.deb"

# linux/arm64 (ARM64) DEB
# shellcheck disable=2154
wget "https://amazoncloudwatch-agent-us-east-2.s3.us-east-2.amazonaws.com/amazon_linux/arm64/${PKG_VER}/amazon-cloudwatch-agent.deb" \
    --output-document "${GITHUB_WORKSPACE}/packages/${PKG_NAME}/dist/${PKG_NAME}_${PKG_VER}-1_arm64.deb"
