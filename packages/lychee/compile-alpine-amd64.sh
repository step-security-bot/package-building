#!/usr/bin/env bash
# Always interpreted by Bash 5+.
set -euo pipefail

# _build-musl-*.yml always passes the package version as the first argument.
PKG_VER="${1}"

SAME_DIR="$(realpath "${BASH_SOURCE[0]%/*}")"

# shellcheck disable=SC1091
source "${SAME_DIR}/compile-alpine.sh" "${PKG_VER}" "amd64"
