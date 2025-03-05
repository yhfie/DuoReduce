"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "main"}> ({
    %1 = "arith.constant"() <{value = 1.280000e+02 : f32}> : () -> f32
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    %4 = "arith.constant"() <{value = 128 : index}> : () -> index
    %7 = "memref.alloc"()                                            : () -> memref<128x128xf32>
    "scf.for"(%2, %4, %3) ({
    ^bb0(%arg0: index):
      "scf.for"(%2, %4, %3) ({
      ^bb0(%arg1: index):
        %8 = "memref.load"(%7, %arg0, %arg1) : (memref<128x128xf32>, index, index) -> f32
        %9 = "arith.cmpf"(%8, %1) <{predicate = 1      }> : (f32, f32) -> i1
        "cf.assert"(%9) <{msg = "Matmul does not produce the right output"}> : (i1) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()
