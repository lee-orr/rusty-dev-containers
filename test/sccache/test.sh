#!/bin/bash

set -e

# Optional: Import test library
source dev-container-features-test-lib

# Definition specific tests
check "installed" cargo install --list | grep "sccache"
check "can find sccache" which sccache
check "sccache set in config" cat /.cargo/config.toml | grep "sccache"

# Report result
reportResults