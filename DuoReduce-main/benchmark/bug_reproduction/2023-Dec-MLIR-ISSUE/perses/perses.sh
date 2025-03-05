#!/bin/bash

for file in /scratch/jiyuan/MLIR-s-benchmark/CIRCT/benchmark/bug_reproduction/2023-Dec-MLIR-ISSUE/perses/generic_mlir/*.mlir; do
  echo $file
  result_file=$(echo "$file" | sed 's/generic_mlir/perses_log/')
  script_file_1=$(echo "$file" | sed 's/generic_mlir/test_oracle/')
  script_file=$(echo "$script_file_1" | sed 's/.mlir/.sh/')
  java -jar /scratch/jiyuan/perses/perses/bazel-bin/src/org/perses/perses_deploy.jar --test-script "$script_file" -i "$script_file_1" --enable-vulcan true > "$result_file"



done
