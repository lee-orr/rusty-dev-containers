#!/bin/bash

set -e

# Optional: Import test library
source dev-container-features-test-lib

# Definition specific tests
check "installed" cargo install --list | grep "xwin"
check "setup directory" ls / | grep ".xwin"
check "added to cargo config" cat /.cargo/config.toml | grep "/.xwin"

# Report result
reportResults