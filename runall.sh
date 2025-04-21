#!/bin/bash

set -e

for testfile in Testcases/*.cpp; do
    filename=$(basename "$testfile")
    echo "==============================="
    echo "Test File: $filename"
    echo "==============================="

    # Generate trace
    ./maketrace.sh "$filename" > /dev/null

    # Temporarily disable error exit to allow continuing even if analyzer returns non-zero
    set +e
    ./analyze.sh
    set -e

    echo ""
done
