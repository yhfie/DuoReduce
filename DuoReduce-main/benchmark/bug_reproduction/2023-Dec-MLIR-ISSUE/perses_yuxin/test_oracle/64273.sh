#!/bin/bash

# Execute the command and capture the output
output=$(~/circt/llvm/build/bin/mlir-opt --shape-to-shape-lowering --convert-bufferization-to-memref --mlir-print-ir-after-failure 64273.mlir 2>&1)

# Search for "Assertion" and "Failed" in the output
if [[ $output == *"PLEASE submit"* && $output == *"bug"* ]]; then
  exit 0
else
  exit 1
fi
