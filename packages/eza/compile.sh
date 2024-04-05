#!/usr/bin/env bash

apk add build-base cargo cargo-auditable libgit2-dev zlib-dev
wget --header "Authorization: Bearer ${GITHUB_TOKEN}" https://github.com/eza-community/eza/archive/v0.16.2/eza-0.16.2.tar.gz
tar zxvf eza-0.16.2.tar.gz

cd eza-0.16.2/
cargo fetch --target="aarch64-unknown-linux-musl" --locked
cargo auditable build --frozen --release
cargo fix --bin "eza" --allow-no-vcs
cargo test --frozen

install -Dm755 target/release/eza -t "$pkgdir"/usr/bin/
