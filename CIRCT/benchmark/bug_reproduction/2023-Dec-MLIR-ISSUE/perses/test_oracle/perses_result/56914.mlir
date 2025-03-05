"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "main"}> ({
    %1 = "arith.constant"()  {value = 1.280000e+02 : f32}  : () -> f32
    %3 = "arith.constant"()  {value = 1 : index}  : () -> index
    %4 = "arith.constant"()  {value = 4   : index}  : () -> index
    %7 = "memref.alloc"()                                            : () -> memref<128x128xf32>
    "scf.for"(%3, %4, %3) ({
    ^4  (%sym_name :index):
      "scf.for"(%3, %4, %3) ({
      ^4  (%predicate     :index):
        %8 = "memref.load"(%7, %4   , %4   ) : (memref<128x128xf32>, index, index) -> f32
        %9 = "arith.cmpf"(%8, %1)  {predicate = 1      }  : (f32, f32) -> i1
        "cf.assert"(%9)  {msg = "Matmul does not produce the right output"}  : (i1) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()
