#!/bin/bash

set -e

function testgroup() {
    local groupname="$1"
    local filename="$2"
    test "$(stat --printf '%G' ${filename})" = "$groupname"
}

# text for g=rwx
function test_directory_perms() {
    local filename="$1"
    local permissions="$(stat --printf '%05a' $filename)"
    ((("$permissions" & 070) == 070))
}

source dev-container-features-test-lib

check 'rustlang group exists'                    grep ^rustlang /etc/group
check '$CARGO_HOME/registry/: group is set'      testgroup rustlang   $CARGO_HOME/registry
check '$CARGO_HOME/registry/: group permissions' test_directory_perms $CARGO_HOME/registry

reportResults
