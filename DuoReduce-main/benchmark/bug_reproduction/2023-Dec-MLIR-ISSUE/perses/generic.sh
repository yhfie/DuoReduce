#!/bin/bash

for file in /scratch/jiyuan/MLIR-s-benchmark/CIRCT/benchmark/bug_reproduction/2023-Dec-MLIR-ISSUE/added_mlir/*.mlir; do

  result_file=$(echo "$file" | sed 's/added_mlir/perses/')
  ~/circt/llvm/build/bin/mlir-opt --allow-unregistered-dialect --mlir-print-op-generic "$file" > "$result_file"


done