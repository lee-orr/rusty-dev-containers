#!/bin/bash

set -e

# Optional: Import test library
source dev-container-features-test-lib

# Definition specific tests
check "installed" which cosmo | grep "cosmo"

# Report result
reportResults