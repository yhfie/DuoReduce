#!/bin/bash

# Execute the command and capture the output
# output=$(~/circt/llvm/build/bin/mlir-opt --expand-strided-metadata --finalize-memref-to-llvm --lower-affine --convert-func-to-llvm --convert-arith-to-llvm --reconcile-unrealized-casts -test-vector-unrolling-patterns=unroll-based-on-type 64074.mlir 2>&1)
# The above output motivate DualDD! Reduction in compilation path can results in further reduction in code! Remove --reconcile-unrealized-casts can trigger the error, but keep it cannot. To make the above compilation path trigger the error, we need more code logic in the IR code
output=$(~/circt/llvm/build/bin/mlir-opt --expand-strided-metadata --finalize-memref-to-llvm --lower-affine --convert-func-to-llvm --convert-arith-to-llvm -test-vector-unrolling-patterns=unroll-based-on-type 64074.mlir 2>&1)

# Search for "Assertion" and "Failed" in the output
if [[ $output == *"Assertion"* && $output == *"failed"* ]]; then
  exit 0
else
  exit 1
fi
