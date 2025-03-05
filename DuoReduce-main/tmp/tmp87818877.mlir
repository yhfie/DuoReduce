//mlir-opt --convert-cf-to-llvm a.mlir
func.func private @func2(%arg0: tensor<27x16xi64>, %arg1: f16, %arg2: memref<?x16xi16>)  {
  %cst_6 = arith.constant dense<true> : vector<10xi1>
  %cst_8 = arith.constant dense<true> : vector<27xi1>
  %16 = llvm.mlir.constant(24583 : i16) : i16
  %17 = llvm.mlir.constant(24583 : i16) : i16
  %18 = llvm.mlir.constant(24583 : i16) : i16
  %19 = llvm.mlir.constant(24583 : i16) : i16
  %26 = llvm.mlir.constant(24583 : i16) : i16
  %27 = llvm.mlir.constant(24583 : i16) : i16
  %28 = llvm.mlir.constant(24583 : i16) : i16
  %29 = llvm.mlir.constant(24583 : i16) : i16
  return
}