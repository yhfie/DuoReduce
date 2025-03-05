#!/bin/bash

# for file in /home/yqiu054/MLIR-s-benchmark/CIRCT/benchmark/bug_reproduction/2023-Dec-MLIR-ISSUE/perses_yuxin/generic_mlir/*.mlir; do
for file in /home/yqiu054/MLIR-s-benchmark/CIRCT/benchmark/bug_reproduction/2023-Dec-MLIR-ISSUE/perses_yuxin/test_oracle/*.mlir; do

  # script_file_1=$(echo "$file" | sed 's/generic_mlir/test_oracle/')
  # script_file=$(echo "$script_file_1" | sed 's/.mlir/.sh/')

  script_file=$(echo "$file" | sed 's/.mlir/.sh/')

  # log_file_1=$(echo "$file" | sed 's/generic_mlir/perses_log/')
  # log_file=$(echo "$log_file_1" | sed 's/.mlir/.log/')

  log_file_1=$(echo "$file" | sed 's/test_oracle/perses_log/')
  log_file=$(echo "$log_file_1" | sed 's/.mlir/.log/')

  result_directory=$(dirname "$log_file")/../reduced

  java -jar /home/yqiu054/MLIR-s-benchmark/CIRCT/ddmin/perses/bazel-bin/src/org/perses/perses_deploy.jar \
     --test-script "$script_file" \
     --input-file "$file" \
     --output-dir "$result_directory" \
     &> "$log_file"

done