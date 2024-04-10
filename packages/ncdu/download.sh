#!/usr/bin/env bash
set -euo pipefail

# linux/amd64 (Intel64)
curl -sSL "https://dev.yorhel.nl/download/ncdu-2.3-linux-x86_64.tar.gz" | tar xvz -C /tmp &&
    mv /tmp/ncdu /usr/local/bin/ncdu_amd64

# linux/arm64 (ARM64)
curl -sSL "https://dev.yorhel.nl/download/ncdu-2.3-linux-aarch64.tar.gz" | tar xvz -C /tmp &&
    mv /tmp/ncdu /usr/local/bin/ncdu_arm64
