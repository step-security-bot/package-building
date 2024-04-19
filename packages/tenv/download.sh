#!/usr/bin/env bash
set -euo pipefail

PKG_VER="$(download-asset latest-tag --owner-repo "tofuutils/tenv")"

# linux/amd64 (Intel64)
wget -O- \
    --header "Authorization: Bearer ${GITHUB_TOKEN}" \
    "https://github.com/tofuutils/tenv/releases/download/v${PKG_VER}/tenv_v${PKG_VER}_Linux_x86_64.tar.gz" |
    tar -xz -C /tmp \
    ;

mv -vf /tmp/tenv /usr/local/bin/tenv_amd64
mv -vf /tmp/terraform /usr/local/bin/terraform_amd64
mv -vf /tmp/terragrunt /usr/local/bin/terragrunt_amd64
mv -vf /tmp/tf /usr/local/bin/tf_amd64
mv -vf /tmp/tofu /usr/local/bin/tofu_amd64

# linux/arm64 (ARM64)
wget -O- \
    --header "Authorization: Bearer ${GITHUB_TOKEN}" \
    "https://github.com/tofuutils/tenv/releases/download/v${PKG_VER}/tenv_v${PKG_VER}_Linux_arm64.tar.gz" |
    tar -xz -C /tmp \
    ;

mv -vf /tmp/tenv /usr/local/bin/tenv_arm64
mv -vf /tmp/terraform /usr/local/bin/terraform_arm64
mv -vf /tmp/terragrunt /usr/local/bin/terragrunt_arm64
mv -vf /tmp/tf /usr/local/bin/tf_arm64
mv -vf /tmp/tofu /usr/local/bin/tofu_arm64
