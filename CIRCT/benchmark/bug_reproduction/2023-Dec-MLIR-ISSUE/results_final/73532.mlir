llvm.func @malloc(i64) -> !llvm.ptr
llvm.func @func1() attributes {sym_visibility = "nested"} {
  %0 = llvm.mlir.constant(64 : index) : i64
  %16 = llvm.mlir.constant(1 : index) : i64
  %20 = llvm.mlir.constant(0x4E4156AC : f32) : f32
  %34 = llvm.mlir.constant(-1 : index) : i64
  %generated = tensor.generate  {
  ^bb0(%arg0: index, %arg1: index):
    %239 = llvm.alloca %16 x !llvm.array<2 x i64> : (i64) -> !llvm.ptr
    %240 = llvm.getelementptr %239[0, 19] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x i64>
    %247 = llvm.call @malloc(%240) : (i64) -> !llvm.ptr
    tensor.yield %20 : f32
  } : tensor<4x30xf32>
  llvm.return
}
