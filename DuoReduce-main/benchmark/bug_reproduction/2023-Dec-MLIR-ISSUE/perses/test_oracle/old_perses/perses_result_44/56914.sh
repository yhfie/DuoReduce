#!/bin/bash

# Execute the command and capture the output
output=$(~/circt/llvm/build/bin/mlir-opt -pass-pipeline='builtin.module(func.func(convert-linalg-to-loops,convert-scf-to-cf),expand-strided-metadata, finalize-memref-to-llvm,lower-affine,convert-func-to-llvm,convert-arith-to-llvm, reconcile-unrealized-casts )' $1 | ~/circt/llvm/build/bin/mlir-cpu-runner -e main -entry-point-result=void -shared-libs=/home/jiyuan/circt/llvm/build/lib/libmlir_c_runner_utils.so.16git 2>&1)

# Search for "Assertion" and "Failed" in the output
if [[ $output == *"PLEASE submit a bug report to"* ]]; then
  echo 0
  exit 0
else
  exit 1
fi
