"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "func2", sym_visibility = "private"}> ({
    %0 = "arith.constant"() <{value = dense<23> : vector<15xindex>}> : () -> vector<15xindex>
    %1 = "arith.constant"() <{value = dense<false> : vector<15xi1>}> : () -> vector<15xi1>
    %2 = "arith.constant"() <{value = 1.000000e+00 : f16}> : () -> f16
    %3 = "arith.constant"() <{value = dense<23> : vector<15xindex>}> : () -> vector<15xindex>
    %4 = "arith.constant"() <{value = dense<false> : vector<15xi1>}> : () -> vector<15xi1>
    %5 = "arith.constant"() <{value = 1.000000e+00 : f16}> : () -> f16
    %6 = "arith.constant"() <{value = 8 : index}> : () -> index
    %7 = "arith.constant"() <{value = 25 : index}> : () -> index
    %8 = "memref.alloc"(%7) <{alignment = 64 : i64, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?x3xf16>
    %9 = "bufferization.to_tensor"(%8) : (memref<?x3xf16>) -> tensor<?x3xf16>
    %10 = "memref.alloca_scope"() ({
      %12 = "arith.constant"() <{value = 0 : index}> : () -> index
      %13 = "arith.constant"() <{value = 89 : index}> : () -> index
      %14 = "arith.constant"() <{value = 1 : index}> : () -> index
      %15 = "scf.for"(%12, %13, %14, %9) ({
      ^bb0(%arg0: index, %arg1: tensor<?x3xf16>):
        %18 = "memref.alloc"(%6) <{alignment = 64 : i64, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?x3xf16>
        %19 = "bufferization.to_tensor"(%18) : (memref<?x3xf16>) -> tensor<?x3xf16>
        "scf.yield"(%19) : (tensor<?x3xf16>) -> ()
      }) : (index, index, index, tensor<?x3xf16>) -> tensor<?x3xf16>
      %16 = "math.ceil"(%15) <{fastmath = #arith.fastmath<none>}> : (tensor<?x3xf16>) -> tensor<?x3xf16>
      %17 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<27xf32>
      "memref.alloca_scope.return"(%17) : (memref<27xf32>) -> ()
    }) : () -> memref<27xf32>
    %11 = "bufferization.clone"(%10) : (memref<27xf32>) -> memref<27xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

