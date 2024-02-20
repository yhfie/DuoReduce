"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "omp_target"}> ({
    %6 = "memref.alloca"()                                            : () -> memref<64x64xf64>
         "omp.map_info"(%6) <{map_capture_type = #omp<variable_capture_kind(ByRef)>                     , operandSegmentSizes = array<i32: 1, 0, 0>, var_type = tensor<  i32>}> : (memref<64x64xf64>) -> memref<64x   f64>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()
