//mlir-opt --int-range-optimizations a.mlir
func.func private @func1() -> index {
  %c30 = arith.constant 30 : index
  %8 = llvm.mlir.constant(24583 : i16) : i16
  %9 = llvm.mlir.constant(24583 : i16) : i16
  %16 = llvm.mlir.constant(24583 : i16) : i16
  %17 = llvm.mlir.constant(24583 : i16) : i16
  %18 = llvm.mlir.constant(24583 : i16) : i16
  %19 = llvm.mlir.constant(24583 : i16) : i16
  %26 = llvm.mlir.constant(24583 : i16) : i16
  %27 = llvm.mlir.constant(24583 : i16) : i16
  %28 = llvm.mlir.constant(24583 : i16) : i16
  %29 = llvm.mlir.constant(24583 : i16) : i16
  %2 = builtin.unrealized_conversion_cast %c30 : index to i32
  llvm.return %2 : i32
}
llvm.func @func2() {
  %c0 = arith.constant 0 : index
  %52 = func.call @func1() : () -> index
  %62 = index.maxu %c0, %52
  llvm.return
}
