#!/usr/bin/env bash
set -euo pipefail

# Add the signing public key
rpm --import https://keys.openpgp.org/vks/v1/by-fingerprint/2C1A348F6149F5AC21D9DCB68D4B026D3C7658F0
rpm --import https://nwlabs-381491855445-package-builder.s3.amazonaws.com/amazon-ssm-agent-exp20250217.asc

# Add the definition
# rpm <= v4.12 does not validate packages signed with subkeys.
# Disable GPG validation for this OS release.
cat <<EOF >/etc/yum.repos.d/northwood-labs.repo
[northwood-labs-amzn2]
name="Northwood Labs: Amazon Linux 2 Packages"
baseurl=https://nwlabs-381491855445-package-builder.s3.amazonaws.com/rpm/amazonlinux/2/\$basearch/
enabled=1
gpgcheck=0
priority=1
check_obsoletes=1
skip_if_unavailable=1
EOF

# Update the package index
yum clean all && rm -rf /var/cache/yum && yum -y update
