#!/usr/bin/env bash
set -euo pipefail

echo "================================================================================"
echo "Clone repo: ${CLONE_REPO} @ ${PKG_VER} to /tmp/__BUILD__"
echo "================================================================================"

# shellcheck disable=2154
git clone "${CLONE_REPO}" --branch "${PKG_VER}.0" --single-branch /tmp/__BUILD__
cd /tmp/__BUILD__

go mod init session-manager-plugin
go mod tidy
go get github.com/twinj/uuid@990eabe

# linux/amd64 (Intel64)
# https://github.com/aws/session-manager-plugin/blob/e12e3d7a44af6321f3c12d156df7f60b596f6628/makefile#L87-L88
GOARCH=amd64 go build -mod=readonly -ldflags "-s -w" -o /usr/local/bin/session-manager-plugin_amd64 -v src/sessionmanagerplugin-main/main.go

# linux/arm64 (ARM64)
# https://github.com/aws/session-manager-plugin/blob/e12e3d7a44af6321f3c12d156df7f60b596f6628/makefile#L109-L110
GOARCH=arm64 go build -mod=readonly -ldflags "-s -w -extldflags=-Wl,-z,now,-z,relro,-z,defs" -o /usr/local/bin/session-manager-plugin_arm64 -v src/sessionmanagerplugin-main/main.go
