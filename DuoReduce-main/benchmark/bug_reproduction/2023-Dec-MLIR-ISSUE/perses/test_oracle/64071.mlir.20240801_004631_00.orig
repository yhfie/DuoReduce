#map1 = affine_map<(d0) -> (d0)>
#map3 = affine_map<(d0, d1, d2, d3) -> (d0 - 16)>
#map0 = affine_map<(d0) -> ()>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?xi1>, tensor<5x5xi32>) -> (), sym_name = "func2"}> ({
  ^bb0(%arg0: tensor<?x?x?xi1>, %arg1: tensor<5x5xi32>):
    %0 = "arith.constant"() <{value = 9777 : i16}> : () -> i16
    %1 = "arith.constant"() <{value = -3527 : i16}> : () -> i16
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "index.ceildivu"(%2, %2) : (index, index) -> index
    %4 = "index.ceildivu"(%2, %2) : (index, index) -> index
    %5 = "index.sizeof"() : () -> index
    %6 = "index.divs"(%2, %2) : (index, index) -> index
    %7 = "affine.apply"(%6, %4, %2, %5) <{map = #map3}> : (index, index, index, index) -> index
    %8 = "arith.constant"() <{value = 2.05639219E+9 : f32}> : () -> f32
    %9 = "arith.constant"() <{value = true}> : () -> i1
    %10 = "arith.constant"() <{value = 0 : index}> : () -> index
    %11 = "arith.constant"() <{value = 5 : index}> : () -> index
    %12 = "arith.constant"() <{value = 1 : index}> : () -> index
    %13 = "arith.constant"() <{value = 6 : index}> : () -> index
    %14 = "tensor.empty"(%12, %13) : (index, index) -> tensor<?x?xi64>
    %15 = "arith.constant"() <{value = dense<true> : vector<10xi1>}> : () -> vector<10xi1>
    %16 = "arith.constant"() <{value = dense<true> : vector<27xi1>}> : () -> vector<27xi1>
    "scf.index_switch"(%7) <{cases = array<i64>}> ({
      %17 = "scf.index_switch"(%2) <{cases = array<i64>}> ({
        %18 = "tensor.empty"() : () -> tensor<7xi16>
        %19 = "tensor.empty"() : () -> tensor<i16>
        %20 = "linalg.dot"(%18, %18, %19) <{operandSegmentSizes = array<i32: 2, 1>}> ({
        ^bb0(%arg2: i16, %arg3: i16, %arg4: i16):
          %22 = "arith.muli"(%arg2, %arg3) : (i16, i16) -> i16
          %23 = "arith.addi"(%arg4, %22) : (i16, i16) -> i16
          "linalg.yield"(%23) : (i16) -> ()
        }) {linalg.memoized_indexing_maps = [#map1, #map1, #map0]} : (tensor<7xi16>, tensor<7xi16>, tensor<i16>) -> tensor<i16>
        %21 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<23x8xi1>
        "scf.yield"(%21) : (memref<23x8xi1>) -> ()
      }) : (index) -> memref<23x8xi1>
      "scf.yield"() : () -> ()
    }) : (index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

