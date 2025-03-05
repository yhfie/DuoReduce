#!/bin/bash

# Execute the command and capture the output
output=$(~/circt/llvm/build/bin/mlir-opt -pass-pipeline='builtin.module(func.func(test-match-reduction, convert-linalg-to-loops,convert-scf-to-cf),expand-strided-metadata, finalize-memref-to-llvm,lower-affine,convert-func-to-llvm,convert-arith-to-llvm, reconcile-unrealized-casts)' 64071.mlir 2>&1)

# Search for "Assertion" and "Failed" in the output
if [[ $output == *"Assertion"* && $output == *"failed"* ]]; then
  exit 0
else
  exit 1
fi