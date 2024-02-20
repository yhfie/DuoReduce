#!/bin/bash

# Execute the command and capture the output
output=$(~/circt/llvm/build/bin/mlir-opt -pass-pipeline='builtin.module(-convert-vector-to-llvm,-finalize-memref-to-llvm,-convert-arith-to-llvm,-convert-openmp-to-llvm)' 76579.mlir 2>&1)

# Search for "Assertion" and "Failed" in the output
if [[ $output == *"PLEASE submit a bug report to"* ]]; then
  echo 0
else
  echo 1
fi
