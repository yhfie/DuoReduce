"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf16>) -> (), sym_name = "func1"                            }> ({
  ^bb0(%arg0: tensor<?xf16>):
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %10 = "arith.constant"() <{value = 0 : index}> : () -> index
    %14 = "memref.alloc"(%10, %2, %2) <{operandSegmentSizes = array<i32: 3, 0>}> : (index, index, index) -> memref<?x?x?xi16>
    %15 = "tensor.empty"(%2, %2, %2) : (index, index, index) -> tensor<?x?x?x24xi16>
    %16 = "linalg.broadcast"(%14, %15) <{dimensions = array<i64: 3>}> ({
    ^bb0(%arg1: i16, %arg2: i16):
      "linalg.yield"(%arg1) : (i16) -> ()
    }) : (memref<?x?x?xi16>, tensor<?x?x?x24xi16>) -> tensor<?x?x?x24xi16>
          "scf.index_switch"(%2) <{cases = array<i64>}> ({
            "memref.alloca_scope"() ({
        %19 = "memref.alloc"(%2, %2, %2) <{operandSegmentSizes = array<i32: 3, 0>}> : (index, index, index) -> memref<?x?x24x?xi16>
        "linalg.transpose"(%16, %19) <{permutation = array<i64: 2, 0, 3, 1>}> ({
        ^bb0(%arg1: i16, %arg2: i16):
          "linalg.yield"(%arg1) : (i16) -> ()
        }) : (tensor<?x?x?x24xi16>, memref<?x?x24x?xi16>) -> ()
        "memref.alloca_scope.return"(%2) : (index) -> ()
      }) : () -> index
      "scf.yield"(%2) : (index) -> ()
    }) : (index) -> index
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()
