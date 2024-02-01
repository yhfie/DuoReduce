#!/bin/bash

count_lines() {
    local file="$1"
    wc -l "$file" | cut -d ' ' -f 1
}

result_csv="benchmark/bug_reproduction/2023-Dec-MLIR-ISSUE/result_mlir/result.csv"
echo "ID,LOC (before),LOC (after),Reduction Ratio" > "$result_csv"

for file_added in benchmark/bug_reproduction/2023-Dec-MLIR-ISSUE/added_mlir/*.mlir; do

    id=$(basename "$file_added" .mlir)
    loc_before=$(count_lines "$file_added")
    file_result="benchmark/bug_reproduction/2023-Dec-MLIR-ISSUE/result_mlir/$id.mlir"

    if [ -e "$file_result" ]; then

        loc_after=$(count_lines "$file_result")
        reduction_ratio=$(awk "BEGIN {printf \"%.2f\", ($loc_before - $loc_after) / $loc_before}")
        echo "$id,$loc_before,$loc_after,$reduction_ratio" >> "$result_csv"

    else
        echo "Error: $file_result not found."
    fi
done
