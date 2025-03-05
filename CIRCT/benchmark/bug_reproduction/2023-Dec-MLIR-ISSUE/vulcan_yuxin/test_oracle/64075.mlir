"builtin.module"() ({
  "func.func"() <{function_type = (i64, memref<?x?xf16>, i16) -> f32, sym_name = "func1", sym_visibility = "nested"}> ({
  ^bb0(%arg0: i64, %arg1: memref<?x?xf16>, %arg2: i16):
    %0 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %1 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %2 = "llvm.mlir.constant"() <{value = 0 : index}> : () -> i64
    %3 = "builtin.unrealized_conversion_cast"(%2) : (i64) -> index
    %4 = "llvm.mlir.constant"() <{value = 1 : index}> : () -> i64
    %5 = "builtin.unrealized_conversion_cast"(%4) : (i64) -> index
    %6 = "llvm.mlir.constant"() <{value = 5 : index}> : () -> i64
    %7 = "builtin.unrealized_conversion_cast"(%6) : (i64) -> index
    %8 = "llvm.mlir.constant"() <{value = 19 : index}> : () -> i64
    %9 = "builtin.unrealized_conversion_cast"(%8) : (i64) -> index
    %10 = "llvm.mlir.constant"() <{value = 31 : index}> : () -> i64
    %11 = "vector.broadcast"(%0) : (f32) -> vector<23x8xf32>
    %12 = "vector.broadcast"(%0) : (f32) -> vector<23x8xf32>
    %13 = "vector.extract_strided_slice"(%12) <{offsets = [14], sizes = [6], strides = [1]}> : (vector<23x8xf32>) -> vector<6x8xf32>
    %14 = "vector.multi_reduction"(%13, %0) <{kind = #vector.kind<minf>, reduction_dims = [0, 1]}> : (vector<6x8xf32>, f32) -> f32
    "func.return"(%14) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

