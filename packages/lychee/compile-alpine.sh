#!/usr/bin/env bash
# Always interpreted by Bash 5+.
set -euo pipefail

# Points back to the workspace directory.
WORKSPACE_DIR="$(realpath "${BASH_SOURCE[0]%/*}/../..")"

# _build-musl.yml always passes the package version as the first argument.
PKG_VER="${1}"
ARCH="${2}"

# The architecture must be converted to the correct target architecture for the
# Rust compiler. This is the "effective architecture".
case "${ARCH}" in
"arm64") EARCH="aarch64" ;;
"amd64") EARCH="x86_64" ;;
*) echo "Unknown architecture: ${ARCH}" && exit 1 ;;
esac

# Install dependencies
apk add \
    build-base \
    cargo \
    cargo-auditable \
    lld \
    mold \
    openssl-dev \
    ;

# shellcheck disable=2154
wget --header "Authorization: Bearer ${GITHUB_TOKEN}" \
    "https://github.com/lycheeverse/lychee/archive/refs/tags/v${PKG_VER}.tar.gz"
tar zxvf "v${PKG_VER}.tar.gz"

cd "lychee-${PKG_VER}/" || true
cargo fetch --target="${EARCH}-unknown-linux-musl" --locked
# cargo test --frozen

# Different build settings for aarch64 vs x86_64.
# The `mold` linker is MUCH faster than `ld` or `lld`.
case "${ARCH}" in
"arm64") mold -run cargo auditable build --timings --frozen --release --jobs 1 ;; # Slower, but scales better.
"amd64") mold -run cargo auditable build --timings --frozen --release ;;
*) echo "Unknown architecture: ${ARCH}" && exit 1 ;;
esac

# The final binary must always end up at `${WORKSPACE_DIR}/builds/usr/bin/{package}_musl_{arch}` so that
# it gets picked up by the build process correctly.
install -Dm755 target/release/lychee -t "${WORKSPACE_DIR}/builds/usr/bin/"
mv -vf "${WORKSPACE_DIR}/builds/usr/bin/lychee" "${WORKSPACE_DIR}/builds/usr/bin/lychee_musl_${ARCH}"
