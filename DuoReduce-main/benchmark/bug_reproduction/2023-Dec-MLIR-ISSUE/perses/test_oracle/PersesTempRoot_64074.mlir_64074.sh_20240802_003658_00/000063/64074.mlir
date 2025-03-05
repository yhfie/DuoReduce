#map1 = affine_map<(d0, d1, d2, d3) -> (d0 - 16)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<23x12xf16>, tensor<?x?x12xi16>, vector<23x21x23xi1>) -> i1, sym_name = "func1"}> ({
    %15 = "memref.alloc"(%2, %7, %7) <{operandSegmentSizes = array<i32: 3, 0>}> : (index, index, index) -> memref<?x?x?xi16>
  }) : () -> ()
}) : () -> ()
