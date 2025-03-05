"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?xi1>, tensor<5x5xi32>) -> (), sym_name = "func2"}> ({
  ^2  (%sym_name :tensor<?x?x?xi1>,%array            :tensor<5x5xi32>):
    %2 = "arith.constant"()  {value = 2 : index}  : () -> index
    "scf.index_switch"(%2) <{cases = array<i64>}> ({
            "scf.index_switch"(%2) <{cases = array<i64>}> ({
        %18 = "tensor.empty"() : () -> tensor<7xi16>
        %19 = "tensor.empty"() : () -> tensor<i16>
              "linalg.dot"(%18, %18, %19) <{operandSegmentSizes = array<i32: 2, 1>}> ({
        ^2  (%arg2: i16, %arg3: i16, %arg4: i16):
          %22 = "arith.muli"(%arg2, %arg3) : (i16, i16) -> i16
          %23 = "arith.addi"(%arg4, %22) : (i16, i16) -> i16
          "linalg.yield"(%23) : (i16) -> ()
        })                                                         : (tensor<7xi16>, tensor<7xi16>, tensor<i16>) -> tensor<i16>
        %21 = "memref.alloc"()                                            : () -> memref<23x8xi1>
        "scf.yield"(%21) : (memref<23x8xi1>) -> ()
      }) : (index) -> memref<23x8xi1>
      "scf.yield"() : () -> ()
    }) : (index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()
