#!/bin/bash

set -e

# Optional: Import test library
source dev-container-features-test-lib

# Definition specific tests
check "installed" cargo install --list | grep "cargo-binstall"

if !cargo binstall  --locked mprocs  -y > /dev/null; then {
    cargo install  --locked mprocs 
}

check "installed" cargo install --list  | grep "mprocs"

# Report result
reportResults