#!/usr/bin/env bash
set -euo pipefail

# Prerequisites
apt-get -y update
apt-get -y install --no-install-recommends \
    apt-utils \
    ca-certificates \
    dialog \
    gnupg2 \
    lsb-release \
    software-properties-common \
    ;

# Add the signing public key
gpg --keyserver hkps://keys.openpgp.org \
    --receive-keys 2C1A348F6149F5AC21D9DCB68D4B026D3C7658F0 2>/dev/null
gpg --output /etc/apt/trusted.gpg.d/northwood-labs.asc \
    --armor \
    --export 2C1A348F6149F5AC21D9DCB68D4B026D3C7658F0

# Add the definition
RELEASE="$(lsb_release -cs)"
mkdir -p /etc/apt/sources.list.d
cat <<EOF >/etc/apt/sources.list.d/northwood-labs.list
# deb https://pkg.northwood-labs.com/apt ${RELEASE} main
# deb https://pkg.northwood-labs.com/apt ${RELEASE} ${RELEASE}
deb https://nwlabs-381491855445-package-builder.s3.amazonaws.com/apt ${RELEASE} main
deb https://nwlabs-381491855445-package-builder.s3.amazonaws.com/apt ${RELEASE} ${RELEASE}
EOF

# Update the package index
apt-get clean && apt-get autoclean && apt-get -y update
