#!/bin/bash

set -e

# Optional: Import test library
source dev-container-features-test-lib

# Definition specific tests
check "installed" cargo install --list | grep "cargo-binstall"

cargo install --locked mprocs -y

check "installed" cargo install --list  | grep "mprocs"

# Report result
reportResults