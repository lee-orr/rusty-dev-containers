#!/bin/bash

set -e

# Optional: Import test library
source dev-container-features-test-lib

# Definition specific tests
check "installed" cargo install --list | grep "cargo-bundle"

cargo bundle --help

# Report result
reportResults