#!/bin/bash
set -e

echo "Activating feature 'Tiny Go'"

# Tiny Go version 
VERSION=${VERSION:-"0.27.0"}
ARCHITECTURE="amd64"

if [ "$(dpkg --print-architecture)" ==  "arm64" ]; then
    ARCHITECTURE="arm64"
fi

apt update
apt install -y curl

LOCALFILE="/tmp/tinygo_${VERSION}_${ARCHITECTURE}.deb"
TINYURL="https://github.com/tinygo-org/tinygo/releases/download/v${VERSION}/tinygo_${VERSION}_${ARCHITECTURE}.deb"

curl -Lo ${LOCALFILE} ${TINYURL}
dpkg -i  ${LOCALFILE}
rm  ${LOCALFILE}