#map2 = affine_map<(d0, d1)[s0] -> (d0 * 128 + s0 + d1)>
#map1 = affine_map<(d0, d1)[s0, s1] -> (d0 * s1 + s0 + d1)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<128x128xf32>, memref<128x128xf32>, memref<128x128xf32>) -> (), sym_name = "matmul"}> ({
  ^bb0(%arg0: memref<128x128xf32>, %arg1: memref<128x128xf32>, %arg2: memref<128x128xf32>):
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 128 : index}> : () -> index
    %3 = "arith.constant"() <{value = 8 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "arith.constant"() <{value = 16 : index}> : () -> index
    "scf.for"(%1, %2, %3) ({
    ^bb0(%arg3: index):
      "scf.for"(%1, %2, %4) ({
      ^bb0(%arg4: index):
        "scf.for"(%1, %2, %5) ({
        ^bb0(%arg5: index):
          %6 = "memref.subview"(%arg0, %arg3, %arg4) <{operandSegmentSizes = array<i32: 1, 2, 0, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 8, 4>, static_strides = array<i64: 1, 1>}> : (memref<128x128xf32>, index, index) -> memref<8x4xf32, #map2>
          %7 = "memref.subview"(%arg1, %arg4, %arg5) <{operandSegmentSizes = array<i32: 1, 2, 0, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 4, 16>, static_strides = array<i64: 1, 1>}> : (memref<128x128xf32>, index, index) -> memref<4x16xf32, #map2>
          %8 = "memref.subview"(%arg2, %arg3, %arg5) <{operandSegmentSizes = array<i32: 1, 2, 0, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 8, 16>, static_strides = array<i64: 1, 1>}> : (memref<128x128xf32>, index, index) -> memref<8x16xf32, #map2>
          %9 = "arith.constant"() <{value = 2 : index}> : () -> index
          "scf.for"(%1, %3, %9) ({
          ^bb0(%arg6: index):
            "scf.for"(%1, %5, %4) ({
            ^bb0(%arg7: index):
              %10 = "memref.subview"(%6, %arg6) <{operandSegmentSizes = array<i32: 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808, 0>, static_sizes = array<i64: 2, 4>, static_strides = array<i64: 1, 1>}> : (memref<8x4xf32, #map2>, index) -> memref<2x4xf32, #map2>
              %11 = "memref.subview"(%7, %arg7) <{operandSegmentSizes = array<i32: 1, 1, 0, 0>, static_offsets = array<i64: 0, -9223372036854775808>, static_sizes = array<i64: 4, 4>, static_strides = array<i64: 1, 1>}> : (memref<4x16xf32, #map2>, index) -> memref<4x4xf32, #map2>
              %12 = "memref.subview"(%8, %arg6, %arg7) <{operandSegmentSizes = array<i32: 1, 2, 0, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 2, 4>, static_strides = array<i64: 1, 1>}> : (memref<8x16xf32, #map2>, index, index) -> memref<2x4xf32, #map2>
              %13 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<32xi8>
              %14 = "memref.view"(%13, %1, %9, %4) : (memref<32xi8>, index, index, index) -> memref<?x?xf32>
              %15 = "memref.subview"(%14, %9, %4) <{operandSegmentSizes = array<i32: 1, 0, 2, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (memref<?x?xf32>, index, index) -> memref<?x?xf32, #map1>
              %16 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<32xi8>
              %17 = "memref.view"(%16, %1, %9, %4) : (memref<32xi8>, index, index, index) -> memref<?x?xf32>
              %18 = "memref.subview"(%17, %9, %4) <{operandSegmentSizes = array<i32: 1, 0, 2, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (memref<?x?xf32>, index, index) -> memref<?x?xf32, #map1>
              "memref.copy"(%10, %15) : (memref<2x4xf32, #map2>, memref<?x?xf32, #map1>) -> ()
              "memref.copy"(%12, %18) : (memref<2x4xf32, #map2>, memref<?x?xf32, #map1>) -> ()
              "memref.copy"(%18, %12) : (memref<?x?xf32, #map1>, memref<2x4xf32, #map2>) -> ()
              "memref.dealloc"(%13) : (memref<32xi8>) -> ()
              "memref.dealloc"(%16) : (memref<32xi8>) -> ()
              "scf.yield"() : () -> ()
            }) : (index, index, index) -> ()
            "scf.yield"() : () -> ()
          }) : (index, index, index) -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) {llvm.emit_c_interface} : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "main"}> ({
    %0 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 1.280000e+02 : f32}> : () -> f32
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    %4 = "arith.constant"() <{value = 128 : index}> : () -> index
    %5 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<128x128xf32>
    %6 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<128x128xf32>
    %7 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<128x128xf32>
    "func.call"(%7, %5, %6) <{callee = @matmul}> : (memref<128x128xf32>, memref<128x128xf32>, memref<128x128xf32>) -> ()
    "scf.for"(%2, %4, %3) ({
    ^bb0(%arg0: index):
      "scf.for"(%2, %4, %3) ({
      ^bb0(%arg1: index):
        %8 = "memref.load"(%7, %arg0, %arg1) : (memref<128x128xf32>, index, index) -> f32
        %9 = "arith.cmpf"(%8, %1) <{predicate = 1 : i64}> : (f32, f32) -> i1
        "cf.assert"(%9) <{msg = "Matmul does not produce the right output"}> : (i1) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "memref.dealloc"(%5) : (memref<128x128xf32>) -> ()
    "memref.dealloc"(%6) : (memref<128x128xf32>) -> ()
    "memref.dealloc"(%7) : (memref<128x128xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

