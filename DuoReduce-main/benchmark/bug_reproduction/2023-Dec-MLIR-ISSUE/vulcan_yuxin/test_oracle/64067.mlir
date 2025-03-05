#map = affine_map<(d0, d1, d2, d3) -> (d0 - 16)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf16>) -> (), sym_name = "func1", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<?xf16>):
    %0 = "arith.constant"() <{value = 9777 : i16}> : () -> i16
    %1 = "arith.constant"() <{value = -3527 : i16}> : () -> i16
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "index.ceildivu"(%2, %2) : (index, index) -> index
    %4 = "index.ceildivu"(%2, %2) : (index, index) -> index
    %5 = "index.sizeof"() : () -> index
    %6 = "index.divs"(%2, %2) : (index, index) -> index
    %7 = "affine.apply"(%6, %4, %2, %5) <{map = #map}> : (index, index, index, index) -> index
    %8 = "arith.constant"() <{value = 2.05639219E+9 : f32}> : () -> f32
    %9 = "arith.constant"() <{value = true}> : () -> i1
    %10 = "arith.constant"() <{value = 0 : index}> : () -> index
    %11 = "arith.constant"() <{value = 5 : index}> : () -> index
    %12 = "arith.constant"() <{value = 1 : index}> : () -> index
    %13 = "arith.constant"() <{value = 6 : index}> : () -> index
    %14 = "memref.alloc"(%10, %2, %2) <{operandSegmentSizes = array<i32: 3, 0>}> : (index, index, index) -> memref<?x?x?xi16>
    %15 = "tensor.empty"(%2, %2, %2) : (index, index, index) -> tensor<?x?x?x24xi16>
    %16 = "linalg.broadcast"(%14, %15) <{dimensions = array<i64: 3>}> ({
    ^bb0(%arg1: i16, %arg2: i16):
      "linalg.yield"(%arg1) : (i16) -> ()
    }) : (memref<?x?x?xi16>, tensor<?x?x?x24xi16>) -> tensor<?x?x?x24xi16>
    %17 = "scf.index_switch"(%2) <{cases = array<i64>}> ({
      %18 = "memref.alloca_scope"() ({
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

