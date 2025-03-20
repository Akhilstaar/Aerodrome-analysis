# Aerodrome Analysis

Repository for implementing online data race detection using Aerodrome algorithm as defined in [this](https://dl.acm.org/doi/10.1145/3373376.3378475) research paper, using LLVM for instrumentation.

Commands for running test code from `b.cpp`:

```
clang -S -emit-llvm -g -O0 b.cpp -o b_out.ll

opt -load-pass-plugin ./pass.so -passes=extended-instr-pass -S b_out.ll -o b_instrumented.ll

clang++ -o instrumented_b_runn b_instrumented.ll runtime.cpp -lpthread

```