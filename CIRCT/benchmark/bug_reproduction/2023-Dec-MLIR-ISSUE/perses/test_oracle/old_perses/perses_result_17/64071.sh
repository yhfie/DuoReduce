#!/bin/bash

# Execute the command and capture the output
output=$(~/circt/llvm/build/bin/mlir-opt -pass-pipeline='builtin.module(func.func(test-match-reduction))' /scratch/jiyuan/MLIR-s-benchmark/CIRCT/benchmark/bug_reproduction/2023-Dec-MLIR-ISSUE/perses/generic_mlir/64071.mlir 2>&1)

# Search for "Assertion" and "Failed" in the output
if [[ $output == *"Assertion"* && $output == *"failed"* ]]; then
  exit 1
else
  exit 0
fi
