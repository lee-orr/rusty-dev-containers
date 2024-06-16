#!/bin/bash
set -e

if ! (which rustup > /dev/null && which cargo > /dev/null); then
    which curl > /dev/null || (apt update && apt install curl -y -qq)
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
    source $HOME/.cargo/env
fi

dpkg -l | grep build-essential || (apt update && apt install build-essential -y -qq)

rustup target add x86_64-pc-windows-msvc

umask 002

if ! cargo install --list | grep "cargo-binstall" > /dev/null; then
    cargo install xwin
else
    cargo binstall xwin
fi

xwin --accept-license splat --output /.xwin

mkdir /.cargo

echo "[target.x86_64-pc-windows-msvc]" >> /.cargo/config.toml
echo "linker = \"lld\"" >> /.cargo/config.toml
echo "rustflags = [" >> /.cargo/config.toml
echo "  \"-Lnative=/.xwin/crt/lib/x86_64\"," >> /.cargo/config.toml
echo "  \"-Lnative=/.xwin/sdk/lib/um/x86_64\"," >> /.cargo/config.toml
echo "  \"-Lnative=/.xwin/sdk/lib/ucrt/x86_64\"" >> /.cargo/config.toml
echo "]" >> /.cargo/config.toml
