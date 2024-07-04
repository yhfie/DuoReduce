#!/bin/bash

# Execute the command and capture the output
output=$(~/circt/llvm/build/bin/mlir-opt -convert-vector-to-llvm -finalize-memref-to-llvm -convert-arith-to-llvm -convert-openmp-to-llvm 76579.mlir 2>&1)

# Search for "Assertion" and "Failed" in the output
if [[ $output == *"PLEASE submit a bug report to"* ]]; then
  exit 1
else
  exit 0
fi
