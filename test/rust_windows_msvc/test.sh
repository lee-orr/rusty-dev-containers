#!/bin/bash

set -e

# Optional: Import test library
source dev-container-features-test-lib

# Definition specific tests
echo "Check XWIN is installed"
cargo install --list | grep "xwin"

echo "Check for XWIN dir"
ls -la / | grep ".xwin"

echo "Cat config.toml"
cat /.cargo/config.toml | grep "/.xwin"

check "installed" cargo install --list | grep "xwin"
check "setup directory" ls -la / | grep ".xwin"
check "added to cargo config" cat /.cargo/config.toml | grep "/.xwin"

# Report result
reportResults