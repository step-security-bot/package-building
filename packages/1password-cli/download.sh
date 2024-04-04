#!/usr/bin/env bash
set -euo pipefail

apt-get -y update &&
    apt-get -y install --no-install-recommends \
        unzip \
    ;

OP_VER="$(curl -sSLf https://app-updates.agilebits.com/check/1/0/CLI2/en/2000001/N | jq -Mr '.version')"

# linux/amd64 (Intel64)
curl -sSfL "https://cache.agilebits.com/dist/1P/op2/pkg/v${OP_VER}/op_linux_amd64_v${OP_VER}.zip" -o /tmp/op.zip
unzip /tmp/op.zip -d /tmp -o
mv -vf /tmp/op "/usr/local/bin/op_amd64"

# linux/arm64 (ARM64)
curl -sSfL "https://cache.agilebits.com/dist/1P/op2/pkg/v${OP_VER}/op_linux_arm64_v${OP_VER}.zip" -o /tmp/op.zip
unzip /tmp/op.zip -d /tmp -o
mv -vf /tmp/op "/usr/local/bin/op_arm64"
