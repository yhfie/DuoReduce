"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13xf32>, memref<?x10x19xi16>, i32) -> tensor<13x10x19xi16>, sym_name = "func1"                           }> ({
  ^bb0(%operandSegmentSizes :tensor<13x f32>,%array:memref<?x10x19xi16>,%reduction_dims :i32):
    %0 = "arith.constant"()  {value = 1              }  : () -> i64
    %2 = "arith.constant"()  {value = 1              }  : () -> i64
    %3 = "arith.constant"()  {value = true}  : () -> i1
    %1 = "arith.constant"()  {value = 2 : index}  : () -> index
    %6 = "tensor.empty"() : () -> tensor<13x10x19xi16>
    %7 = "memref.alloc"()                                            : () -> memref<13xi1>
    %8 = "memref.alloc"(%1)  {operandSegmentSizes = array<i32: 1, 0>}  : (index) -> memref<?xi64>
    "scf.execute_region"() ({
      %13 = "vector.load"(%8, %1) : (memref<?xi64>, index) -> vector<13x10x19xi64>
            "scf.parallel"(%1, %1, %1, %1, %1, %1, %13) <{operandSegmentSizes = array<i32: 2, 2, 2, 1>}> ({
      ^2  (%function_type :index,%arg4 :index):
        %16 = "vector.broadcast"(%0) : (i64) -> vector<13x19xi64>
        %17 = "vector.broadcast"(%3) : (i1) -> vector<13x10x19xi1>
              "vector.mask"(%17) ({
          %20 = "vector.multi_reduction"(%13, %16)  {kind = #vector.kind<minui>, reduction_dims = [1]}  : (vector<13x10x19xi64>, vector<13x19xi64>) -> vector<13x19xi64>
          "vector.yield"(%20) : (vector<13x19xi64>) -> ()
        }) : (vector<13x10x19xi1>) -> vector<13x19xi64>
        "scf.reduce"(%13) ({
        ^2  (%arg5: vector<13x10x19xi64>, %arg6: vector<13x10x19xi64>):
          %20 = "vector.broadcast"(%2) : (i64) -> vector<13x10x19xi64>
          "scf.reduce.return"(%20) : (vector<13x10x19xi64>) -> ()
        }) : (vector<13x10x19xi64>) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index, index, index, index, vector<13x10x19xi64>) -> vector<13x10x19xi64>
      "scf.yield"() : () -> ()
    }) : () -> ()
          "bufferization.to_tensor"(%7) : (memref<13xi1>) -> tensor<13xi1>
    "func.return"(%6) : (tensor<13x10x19xi16>) -> ()
  }) : () -> ()
}) : () -> ()
