#!/bin/bash

set -e

if [ ! -f "trace.log" ]; then
    echo "Error: trace.log not found"
    exit 1
fi

g++ -std=c++17 -g Analysis/*.cpp -o analyze

echo "Running analysis..."
./analyze trace.log
