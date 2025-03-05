#!/bin/bash

# Execute the command and capture the output
output=$(~/circt/llvm/build/bin/mlir-opt --arith-emulate-wide-int /scratch/jiyuan/MLIR-s-benchmark/CIRCT/benchmark/bug_reproduction/2023-Dec-MLIR-ISSUE/perses/generic_mlir/73381.mlir 2>&1)

# Search for "Assertion" and "Failed" in the output
if [[ $output == *"Assertion"* && $output == *"failed"* ]]; then
  echo 0
else
  echo 1
fi
