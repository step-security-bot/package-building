#!/usr/bin/env sh

# Environment variables
ALPINE_RELEASE="v$(cut /etc/alpine-release -d '.' -f 1,2)"

# Add the signing public key
wget -q \
    https://nwlabs-381491855445-package-builder.s3.amazonaws.com/signing.key.pub \
    -O /etc/apk/keys/northwood-labs.pub

cat <<EOF >>/etc/apk/repositories
https://nwlabs-381491855445-package-builder.s3.amazonaws.com/apk/${ALPINE_RELEASE}/main
EOF

# Update the index
apk update --allow-untrusted
