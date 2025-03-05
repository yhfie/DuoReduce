"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13xf32>, memref<?x10x19xi16>, i32) -> tensor<13x10x19xi16>, sym_name = "func1", sym_visibility = "nested"}> ({
  ^bb0(%arg0: tensor<13xf32>, %arg1: memref<?x10x19xi16>, %arg2: i32):
    %0 = "arith.constant"() <{value = 399409779 : i64}> : () -> i64
    %1 = "arith.constant"() <{value = 1.78212314E+9 : f32}> : () -> f32
    %2 = "arith.constant"() <{value = 335554098 : i64}> : () -> i64
    %3 = "arith.constant"() <{value = true}> : () -> i1
    %4 = "arith.constant"() <{value = 0 : index}> : () -> index
    %5 = "arith.constant"() <{value = 2 : index}> : () -> index
    %6 = "tensor.empty"() : () -> tensor<13x10x19xi16>
    %7 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<13xi1>
    %8 = "memref.alloc"(%4) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi64>
    %9 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<13xf16>
    %10 = "index.xor"(%5, %5) : (index, index) -> index
    %11 = "bufferization.clone"(%9) : (memref<13xf16>) -> memref<13xf16>
    "scf.execute_region"() ({
      %13 = "vector.load"(%8, %4) : (memref<?xi64>, index) -> vector<13x10x19xi64>
      %14 = "scf.parallel"(%4, %5, %4, %5, %5, %5, %13) <{operandSegmentSizes = array<i32: 2, 2, 2, 1>}> ({
      ^bb0(%arg3: index, %arg4: index):
        %16 = "vector.broadcast"(%0) : (i64) -> vector<13x19xi64>
        %17 = "vector.broadcast"(%3) : (i1) -> vector<13x10x19xi1>
        %18 = "vector.mask"(%17) ({
          %20 = "vector.multi_reduction"(%13, %16) <{kind = #vector.kind<minui>, reduction_dims = [1]}> : (vector<13x10x19xi64>, vector<13x19xi64>) -> vector<13x19xi64>
          "vector.yield"(%20) : (vector<13x19xi64>) -> ()
        }) : (vector<13x10x19xi1>) -> vector<13x19xi64>
        %19 = "vector.broadcast"(%0) : (i64) -> vector<13x10x19xi64>
        "scf.reduce"(%19) ({
        ^bb0(%arg5: vector<13x10x19xi64>, %arg6: vector<13x10x19xi64>):
          %20 = "vector.broadcast"(%2) : (i64) -> vector<13x10x19xi64>
          "scf.reduce.return"(%20) : (vector<13x10x19xi64>) -> ()
        }) : (vector<13x10x19xi64>) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index, index, index, index, vector<13x10x19xi64>) -> vector<13x10x19xi64>
      %15 = "memref.load"(%11, %5) : (memref<13xf16>, index) -> f16
      "scf.yield"() : () -> ()
    }) : () -> ()
    %12 = "bufferization.to_tensor"(%7) : (memref<13xi1>) -> tensor<13xi1>
    "func.return"(%6) : (tensor<13x10x19xi16>) -> ()
  }) : () -> ()
}) : () -> ()

