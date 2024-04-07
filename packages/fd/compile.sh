#!/usr/bin/env bash

##
# NOT USING THIS AT THE MOMENT.
# Alpine Linux already packages at least a recent version of this package.
##

apk add build-base cargo cargo-auditable coreutils
wget --header "Authorization: Bearer ${GITHUB_TOKEN}" https://github.com/sharkdp/fd/archive/v9.0.0/fd-9.0.0.tar.gz
tar zxvf fd-9.0.0.tar.gz

cd fd-9.0.0/
cargo fetch --target="aarch64-unknown-linux-musl" --locked
cargo auditable build --frozen --release
make completions
cargo auditable build --frozen --release --no-default-features --features use-jemalloc
cargo fix --bin "fd" --allow-no-vcs
cargo test --frozen

install -Dm755 target/release/fd -t "$pkgdir"/usr/bin/
