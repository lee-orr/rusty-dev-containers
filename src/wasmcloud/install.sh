#!/bin/bash
set -e

if ! which rustup > /dev/null; then
    which curl > /dev/null || (apt update && apt install curl -y -qq)
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
    source $HOME/.cargo/env
fi

dpkg -l | grep build-essential || (apt update && apt install build-essential -y -qq)
dpkg -l | grep pkg-config || (apt update && apt install pkg-config -y -qq)
dpkg -l | grep libz-dev|| (apt update && apt install libz-dev -y -qq)
dpkg -l | grep "ii  git" || (apt update && apt install git -y -qq)

curl -fLO https://www.openssl.org/source/openssl-1.1.1s.tar.gz
tar -xvf openssl-1.1.1s.tar.gz 
cd openssl-1.1.1s
./config --prefix=/usr/local/ssl --openssldir=/usr/local/ssl shared zlib
make
make test
make install

if ! cargo install --list | grep "cargo-binstall" > /dev/null; then
    cargo install cargo-binstall
fi

umask 002
cargo install wash-cli --git https://github.com/wasmcloud/wash --force

