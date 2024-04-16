#!/bin/bash
set -e

if ! (which rustup > /dev/null && which cargo > /dev/null); then
    which curl > /dev/null || (apt update && apt install curl -y -qq)
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
    source $HOME/.cargo/env
fi

dpkg -l | grep build-essential || (apt update && apt install build-essential -y -qq)



if ! cargo install --list | grep "cargo-binstall" > /dev/null; then
    cargo install cargo-binstall
fi

umask 002
if !cargo binstall  cargo-bundle --locked  -y > /dev/null; then {
    cargo install  cargo-bundle --locked 
}