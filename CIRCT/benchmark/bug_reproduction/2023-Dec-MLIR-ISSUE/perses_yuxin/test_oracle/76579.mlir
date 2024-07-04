"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "omp_target"}> ({
    %0 = "arith.constant"() <{value = dense<23> : vector<15xindex>}> : () -> vector<15xindex>
    %1 = "arith.constant"() <{value = dense<false> : vector<15xi1>}> : () -> vector<15xi1>
    %2 = "arith.constant"() <{value = 1.000000e+00 : f16}> : () -> f16
    %3 = "arith.constant"() <{value = dense<23> : vector<15xindex>}> : () -> vector<15xindex>
    %4 = "arith.constant"() <{value = dense<false> : vector<15xi1>}> : () -> vector<15xi1>
    %5 = "arith.constant"() <{value = 1.000000e+00 : f16}> : () -> f16
    %6 = "memref.alloca"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<64x64xf64>
    %7 = "memref.alloca"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<64x64xf64>
    %8 = "omp.map_info"(%6) <{map_capture_type = #omp<variable_capture_kind(ByRef)>, map_type = 1 : ui64, operandSegmentSizes = array<i32: 1, 0, 0>, var_type = tensor<?xi32>}> : (memref<64x64xf64>) -> memref<64x64xf64>
    %9 = "omp.map_info"(%7) <{map_capture_type = #omp<variable_capture_kind(ByRef)>, map_type = 2 : ui64, operandSegmentSizes = array<i32: 1, 0, 0>, var_type = tensor<?xi32>}> : (memref<64x64xf64>) -> memref<64x64xf64>
    "omp.target"(%8, %9) <{operandSegmentSizes = array<i32: 0, 0, 0, 2>}> ({
    ^bb0(%arg0: memref<64x64xf64>, %arg1: memref<64x64xf64>):
      "omp.teams"() <{operandSegmentSizes = array<i32: 0, 0, 0, 0, 0, 0, 0>}> ({
        "omp.parallel"() <{operandSegmentSizes = array<i32: 0, 0, 0, 0, 0>}> ({
          %10 = "arith.constant"() <{value = 0 : index}> : () -> index
          %11 = "arith.constant"() <{value = 1 : index}> : () -> index
          %12 = "arith.constant"() <{value = 8192 : index}> : () -> index
          "omp.wsloop"(%10, %10, %10, %10, %12, %12, %12, %12, %11, %11, %11, %11) <{operandSegmentSizes = array<i32: 4, 4, 4, 0, 0, 0, 0>}> ({
          ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
            %13 = "vector.load"(%arg0, %arg2, %arg3) : (memref<64x64xf64>, index, index) -> vector<16xf64>
            %14 = "vector.load"(%arg1, %arg4, %arg5) : (memref<64x64xf64>, index, index) -> vector<16xf64>
            %15 = "vector.load"(%arg1, %arg3, %arg2) : (memref<64x64xf64>, index, index) -> vector<16xf64>
            %16 = "arith.mulf"(%13, %14) <{fastmath = #arith.fastmath<none>}> : (vector<16xf64>, vector<16xf64>) -> vector<16xf64>
            %17 = "arith.divf"(%14, %15) <{fastmath = #arith.fastmath<none>}> : (vector<16xf64>, vector<16xf64>) -> vector<16xf64>
            %18 = "arith.addf"(%16, %17) <{fastmath = #arith.fastmath<none>}> : (vector<16xf64>, vector<16xf64>) -> vector<16xf64>
            "vector.store"(%18, %arg1, %arg2, %arg3) : (vector<16xf64>, memref<64x64xf64>, index, index) -> ()
            "omp.terminator"() : () -> ()
          }) : (index, index, index, index, index, index, index, index, index, index, index, index) -> ()
          "omp.terminator"() : () -> ()
        }) : () -> ()
        "omp.terminator"() : () -> ()
      }) : () -> ()
      "omp.terminator"() : () -> ()
    }) : (memref<64x64xf64>, memref<64x64xf64>) -> ()
    "omp.barrier"() : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

