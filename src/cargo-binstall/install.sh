#!/bin/bash
set -e

PACKAGES=${PACKAGES:-""}

CARGO_PACKAGES=("${PACKAGES//,/ }")

if ! (which rustup > /dev/null && which cargo > /dev/null); then
    which curl > /dev/null || (apt update && apt install curl -y -qq)
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
    source $HOME/.cargo/env
fi

dpkg -l | grep build-essential || (apt update && apt install build-essential --  -y -qq)

cargo install cargo-binstall

if [ -z "${PACKAGES}" ]; then
    echo "No packages specified, and no upgrade required. Skip installation..."
    exit 0
fi

umask 002
cargo binstall -y --force --locked $CARGO_PACKAGES
