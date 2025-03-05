#map1 = affine_map<(d0, d1, d2, d3) -> (d0 - 16)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<23x12xf16>, tensor<?x?x12xi16>, vector<23x21x23xi1>) -> i1, sym_name = "func1"}> ({
         "arith.constant"() <{value = 0 : index}> : () -> index
  }) : () -> ()
}) : () -> ()
