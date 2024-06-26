#!/bin/bash

set -e

# Trim quotes in case any were introduced.
TARGETS=$(echo ${TARGETS} | tr -d '"' | awk '{$1=$1};1')

# Check apps.
if [ ! -z "${TARGETS}" ]; then
    echo "$ pixlet check ${TARGETS}"
    pixlet check ${TARGETS}
else
    echo "✔️ No apps modified"
fi
