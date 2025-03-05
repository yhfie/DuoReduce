#!/bin/bash

# Execute the command and capture the output
# output=$(~/circt/llvm/build/bin/mlir-opt --reconcile-unrealized-casts --buffer-deallocation 73191.mlir 2>&1)
# The above output motivate DualDD! Reduction in compilation path can results in further reduction in code! Remove --reconcile-unrealized-casts can trigger the error, but keep it cannot. To make the above compilation path trigger the error, we need more code logic in the IR code

output=$(~/circt/llvm/build/bin/mlir-opt --convert-scf-to-cf --lower-affine --convert-arith-to-llvm --buffer-deallocation --arith-emulate-unsupported-floats --arith-emulate-wide-int --arith-expand --arith-int-narrowing --arith-unsigned-when-equivalent --finalize-memref-to-llvm --map-memref-spirv-storage-class --expand-realloc --expand-strided-metadata --fold-memref-alias-ops --memref-emulate-wide-int --memref-expand --normalize-memrefs --resolve-ranked-shaped-type-result-dims --resolve-shaped-type-result-dims 73191.mlir 2>&1)
# Search for "Assertion" and "Failed" in the output
if [[ $output == *"Assertion"* && $output == *"failed"* ]]; then
  exit 0
else
  echo $output
  exit 1
fi
