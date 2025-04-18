#!/bin/bash

# Compile the LLVM pass
clang++ -fPIC -shared TraceInstrumentationPass.cpp -o TraceInstrumentationPass.so `llvm-config --cxxflags --ldflags --system-libs --libs core passes`

# Compile the runtime library
g++ -c -std=c++17 runtime.cpp -o runtime.o

# Generate LLVM IR for the test program
clang -S -emit-llvm -g -O0 b.cpp -o b_out.ll

# Apply the instrumentation pass
opt -load-pass-plugin=./TraceInstrumentationPass.so -passes=trace-instr -S b_out.ll -o b_instrumented.ll

# Compile the instrumented IR with the runtime
clang++ -o instrumented_b b_instrumented.ll runtime.o -lpthread

# Run the instrumented program
./instrumented_b

# Optional: View the trace
# cat trace.log