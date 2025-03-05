#!/bin/bash

# Execute the command and capture the output
output=$(~/circt/llvm/build/bin/mlir-opt --inline --convert-scf-to-cf --lower-affine --convert-arith-to-llvm  --buffer-deallocation /scratch/jiyuan/MLIR-s-benchmark/CIRCT/benchmark/bug_reproduction/2023-Dec-MLIR-ISSUE/perses/generic_mlir/73285.mlir 2>&1)

# Search for "Assertion" and "Failed" in the output
if [[ $output == *"Assertion"* && $output == *"failed"* ]]; then
  exit 0
else
  exit 1
fi
