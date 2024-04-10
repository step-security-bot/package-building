#!/usr/bin/env bash
set -euo pipefail

##
# Git repo should be already cloned by now.
##

# linux/amd64 (Intel64)
GOARCH=amd64 go build -ldflags "-w -s" -trimpath -x -o /usr/local/bin/gommit_amd64 .

# linux/arm64 (ARM64)
GOARCH=arm64 go build -ldflags "-w -s" -trimpath -x -o /usr/local/bin/gommit_arm64 .
