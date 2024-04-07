#!/usr/bin/env bash
# Always interpreted by Bash 5+.
set -euo pipefail

# Points back to the workspace directory.
WORKSPACE_DIR="$(realpath "${BASH_SOURCE[0]%/*}/../..")"

# _build-musl-arm64.yml always passes the package version as the first argument.
PKG_VER="${1}"

# Install dependencies
apk add \
    build-base \
    cargo \
    cargo-auditable \
    openssl-dev \
    ;

# shellcheck disable=2154
wget --header "Authorization: Bearer ${GITHUB_TOKEN}" \
    "https://github.com/lycheeverse/lychee/archive/refs/tags/v${PKG_VER}.tar.gz"
tar zxvf "v${PKG_VER}.tar.gz"

cd "lychee-${PKG_VER}/" || true
cargo fetch --target="aarch64-unknown-linux-musl" --locked
# cargo test --frozen
cargo auditable build --frozen --release

# The final binary must always end up at `${WORKSPACE_DIR}/builds/usr/bin/{package}_musl_arm64` so that
# it gets picked up by the build process correctly.
install -Dm755 target/release/lychee -t "${WORKSPACE_DIR}/builds/usr/bin/"
mv -vf "${WORKSPACE_DIR}/builds/usr/bin/lychee" "${WORKSPACE_DIR}/builds/usr/bin/lychee_musl_arm64"
