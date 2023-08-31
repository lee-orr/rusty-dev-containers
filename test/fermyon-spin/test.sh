#!/bin/bash

set -e

# Optional: Import test library
source dev-container-features-test-lib

# Definition specific tests
#check "installed" spin plugins list | grep "message"
spin --help

# Report result
reportResults