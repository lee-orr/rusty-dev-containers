#!/bin/bash

set -e

# Optional: Import test library
source dev-container-features-test-lib
spin plugins list
# Definition specific tests
check "installed" spin plugins list | grep "trigger-message"

# Report result
reportResults