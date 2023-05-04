#!/bin/bash

set -e

# Optional: Import test library
source dev-container-features-test-lib

# Definition specific tests
check "version" rustc --print target-list | grep wasm32-unknown-unknown

# Report result
reportResults