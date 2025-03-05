#!/bin/bash

for file in /home/yqiu054/MLIR-s-benchmark/CIRCT/benchmark/bug_reproduction/2023-Dec-MLIR-ISSUE/added_mlir/*.mlir; do

  result_file=$(echo "$file" | sed 's/added_mlir/perses_yuxin/')
  ~/circt/llvm/build/bin/mlir-opt --allow-unregistered-dialect --mlir-print-op-generic "$file" > "$result_file"


done