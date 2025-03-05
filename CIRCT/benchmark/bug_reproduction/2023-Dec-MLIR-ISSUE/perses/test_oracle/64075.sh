#!/bin/bash

# Execute the command and capture the output
output=$(~/circt/llvm/build/bin/mlir-opt -expand-strided-metadata --finalize-memref-to-llvm --lower-affine --convert-arith-to-llvm -test-vector-unrolling-patterns=unroll-based-on-type 64075.mlir 2>&1)

# Search for "Assertion" and "Failed" in the output
if [[ $output == *"Assertion"* && $output == *"failed"* ]]; then
  exit 0
else
  echo $output
  #exit 1
fi
