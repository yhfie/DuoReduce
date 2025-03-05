#map = affine_map<() -> (0)>
#map1 = affine_map<() -> (114)>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "func2", sym_visibility = "private"}> ({
    %0 = "arith.constant"() <{value = dense<23> : vector<15xindex>}> : () -> vector<15xindex>
    %1 = "arith.constant"() <{value = dense<false> : vector<15xi1>}> : () -> vector<15xi1>
    %2 = "arith.constant"() <{value = 1.000000e+00 : f16}> : () -> f16
    %3 = "arith.constant"() <{value = dense<23> : vector<15xindex>}> : () -> vector<15xindex>
    %4 = "arith.constant"() <{value = dense<false> : vector<15xi1>}> : () -> vector<15xi1>
    %5 = "arith.constant"() <{value = 1.000000e+00 : f16}> : () -> f16
    %6 = "arith.constant"() <{value = dense<23> : vector<15xindex>}> : () -> vector<15xindex>
    %7 = "arith.constant"() <{value = dense<false> : vector<15xi1>}> : () -> vector<15xi1>
    %8 = "arith.constant"() <{value = 1.000000e+00 : f16}> : () -> f16
    %9 = "arith.constant"() <{value = dense<23> : vector<15xindex>}> : () -> vector<15xindex>
    %10 = "arith.constant"() <{value = dense<false> : vector<15xi1>}> : () -> vector<15xi1>
    %11 = "arith.constant"() <{value = 1.000000e+00 : f16}> : () -> f16
    %12 = "arith.constant"() <{value = 0 : index}> : () -> index
    %13 = "arith.constant"() <{value = 7 : index}> : () -> index
    %14 = "arith.constant"() <{value = 18 : index}> : () -> index
    %15 = "memref.alloc"(%14, %13) <{operandSegmentSizes = array<i32: 2, 0>}> : (index, index) -> memref<?x?xf16>
    %16 = "affine.for"(%14) <{lowerBoundMap = #map, operandSegmentSizes = array<i32: 0, 0, 1>, step = 1 : index, upperBoundMap = #map1}> ({
    ^bb0(%arg0: index, %arg1: index):
      "affine.yield"(%arg0) : (index) -> ()
    }) : (index) -> index
    %17 = "memref.alloca_scope"() ({
      "memref.alloca_scope.return"(%11) : (f16) -> ()
    }) : () -> f16
    "memref.alloca_scope"() ({
      %18 = "vector.broadcast"(%17) : (f16) -> vector<15xf16>
      "vector.scatter"(%15, %16, %12, %9, %10, %18) : (memref<?x?xf16>, index, index, vector<15xindex>, vector<15xi1>, vector<15xf16>) -> ()
      "memref.alloca_scope.return"() : () -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

