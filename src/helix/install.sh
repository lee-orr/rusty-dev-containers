#!/bin/bash
set -e

if ! which rustup > /dev/null; then
    which curl > /dev/null || (apt update && apt install curl -y -qq)
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
    source $HOME/.cargo/env
fi

dpkg -l | grep build-essential || (apt update && apt install build-essential -y -qq)
dpkg -l | grep pkg-config || (apt update && apt install pkg-config -y -qq)
dpkg -l | grep "ii  git" || (apt update && apt install git -y -qq)


git clone https://github.com/helix-editor/helix
cd helix
umask 002
cargo install --path helix-term --locked