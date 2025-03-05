#!/bin/bash

# Execute the command and capture the output
output=$(~/circt/llvm/build/bin/mlir-opt --int-range-optimizations --convert-cf-to-llvm --sroa --arith-emulate-wide-int --inline --convert-scf-to-cf --lower-affine --convert-arith-to-llvm  --buffer-deallocation 74234.mlir 2>&1)

# Search for "Assertion" and "Failed" in the output
if [[ $output == *"Assertion"* && $output == *"failed"* ]]; then
  exit 0
else
  exit 1
fi
