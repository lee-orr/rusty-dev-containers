#!/bin/bash

set -e

# Optional: Import test library
source dev-container-features-test-lib

# Definition specific tests
check "installed" cargo install --list | grep "bacon"

bacon --help

# Report result
reportResults