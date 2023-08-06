#!/bin/bash

set -e

# Optional: Import test library
source dev-container-features-test-lib

# Definition specific tests
check "installed" cargo install --list | grep "cargo-audit"

cargo new test_pkg
cd ./test_pkg
cargo build
cargo audit

# Report result
reportResults