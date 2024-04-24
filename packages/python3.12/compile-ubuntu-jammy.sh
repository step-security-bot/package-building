#!/usr/bin/env bash
set -euo pipefail

export PIP_ROOT_USER_ACTION=ignore

# shellcheck disable=SC2154
git clone https://github.com/python/cpython.git --branch "v${PKG_VER}" --single-branch --depth 1 /tmp/python

cd /tmp/python

# https://devguide.python.org/getting-started/setup-building/
RELEASE=$(lsb_release -cs)
echo "deb-src http://archive.ubuntu.com/ubuntu/ ${RELEASE} main" >>/etc/apt/sources.list
apt-get -y update

apt-get -y build-dep python3-defaults
apt-get -y install --no-install-recommends \
    gdb \
    lcov \
    libbz2-dev \
    libffi-dev \
    libgdbm-compat-dev \
    libgdbm-dev \
    liblzma-dev \
    libncurses5-dev \
    libreadline6-dev \
    libsqlite3-dev \
    libssl-dev \
    lzma \
    lzma-dev \
    pkg-config \
    tk-dev \
    uuid-dev \
    zlib1g-dev \
    ;

mkdir -p /tmp/install

./configure \
    --disable-test-modules \
    --enable-big-digits=30 \
    --enable-ipv6 \
    --enable-loadable-sqlite-extensions \
    --enable-optimizations \
    --with-lto \
    ;

# shellcheck disable=SC2046,SC2312
make -j$(nproc) && make install DESTDIR=/tmp/install
