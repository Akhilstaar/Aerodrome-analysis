#!/bin/bash

# Enable error checking
set -e

# Check if filename argument is provided
if [ $# -eq 0 ]; then
    echo "Error: No test file provided"
    echo "Usage: $0 <test_filename>"
    exit 1
fi

TEST_FILE="Testcases/$1"
BASE_NAME=$(basename "$TEST_FILE" .cpp)

# remove any trace.log anywhere under cwd
find . -type f -name 'trace.log' -exec rm -f {} +
# remove any generated LLVM IR files
find Testcases -type f -name '*.ll' -exec rm -f {} +
# remove any instrumented binaries
find Testcases -type f -name "*_instrumented" -exec rm -f {} +
# remove the instrumentation plugin
rm -f Instrumentation/instr.so

# Make sure the top‑level trace.log is fresh
rm -f trace.log
touch trace.log

# Verify test file exists
if [ ! -f "$TEST_FILE" ]; then
    echo "Error: Test file $TEST_FILE not found"
    exit 1
fi

# ---- Build & Run ----

# 1) Compile the instrumentation pass
# echo "Compiling instrumentation pass..."
clang++ -fPIC -shared -g Instrumentation/Instrumentation.cpp \
        -o Instrumentation/instr.so \
        $(llvm-config --cxxflags --ldflags --system-libs --libs core passes)

# 2) Generate LLVM IR from the test
# echo "Generating LLVM IR for $TEST_FILE..."
clang -S -emit-llvm -g -O0 -fno-discard-value-names \
      "$TEST_FILE" \
      -o "Testcases/${BASE_NAME}.ll"

# 3) Instrument the IR
# echo "Instrumenting the IR..."
opt -load-pass-plugin ./Instrumentation/instr.so \
    -passes=instr \
    -S "Testcases/${BASE_NAME}.ll" \
    -o "Testcases/${BASE_NAME}_instrumented.ll"

# 4) Compile instrumented code with the runtime
# echo "Compiling instrumented program..."
clang++ -g \
    -o "Testcases/${BASE_NAME}_instrumented" \
    "Testcases/${BASE_NAME}_instrumented.ll" \
    Instrumentation/runtime.cpp \
    -lpthread

# 5) Run the instrumented program, writing trace.log in cwd
# echo "Running instrumented program..."
./Testcases/${BASE_NAME}_instrumented

echo "Done — new trace in $(pwd)/trace.log"