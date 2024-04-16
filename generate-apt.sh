#!/usr/bin/env bash
set -euo pipefail

PATH_TO_READ="${1}"
RELEASE="${2}"

cat <<EOF
Origin: Northwood Labs Repository
Suite: ${RELEASE}
Version: 1.0
Codename: stable
Date: $(date -Ru || true)
Acquire-By-Hash: yes
Architectures: amd64 arm64 all
Components: main
Description: Northwood Labs Repository
EOF
echo "MD5Sum:"
# shellcheck disable=2016
find "${PATH_TO_READ}" -type f -name "Packages*" -print0 | xargs -0 -I% bash -c '
    echo " $(md5sum "%" | cut --delimiter=" " --fields=1) $(wc --bytes "%" | sed -r "s,dists/([^/]+)/,,")"
'
echo "SHA1:"
# shellcheck disable=2016
find "${PATH_TO_READ}" -type f -name "Packages*" -print0 | xargs -0 -I% bash -c '
    echo " $(sha1sum "%" | cut --delimiter=" " --fields=1) $(wc --bytes "%" | sed -r "s,dists/([^/]+)/,,")"
'
echo "SHA256:"
# shellcheck disable=2016
find "${PATH_TO_READ}" -type f -name "Packages*" -print0 | xargs -0 -I% bash -c '
    echo " $(sha256sum "%" | cut --delimiter=" " --fields=1) $(wc --bytes "%" | sed -r "s,dists/([^/]+)/,,")"
'
