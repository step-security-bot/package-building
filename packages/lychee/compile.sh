#!/usr/bin/env bash

apk add build-base cargo cargo-auditable
wget --header "Authorization: Bearer ${GITHUB_TOKEN}" https://github.com/lycheeverse/lychee/archive/refs/tags/v0.14.3.tar.gz
tar zxvf v0.14.3.tar.gz

cd lychee-0.14.3/
cargo fetch --target="aarch64-unknown-linux-musl" --locked
cargo auditable build --frozen --release
cargo test --frozen

install -Dm755 target/release/lychee -t "$pkgdir"/usr/bin/
