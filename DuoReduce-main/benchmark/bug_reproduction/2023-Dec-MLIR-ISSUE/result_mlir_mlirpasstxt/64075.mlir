module {
  func.func nested @func1(%arg0: i64, %arg1: memref<?x?xf16>, %arg2: i16) -> f32 {
    %cst_1 = arith.constant 1.0 : f32
    %6 = llvm.mlir.constant(24583 : i16) : i16
    %31 = llvm.mlir.constant(0 : index) : i64
    %32 = builtin.unrealized_conversion_cast %31 : i64 to index
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = builtin.unrealized_conversion_cast %33 : i64 to index
    %40 = llvm.mlir.constant(5 : index) : i64
    %41 = builtin.unrealized_conversion_cast %40 : i64 to index
    %52 = llvm.mlir.constant(19 : index) : i64
    %53 = builtin.unrealized_conversion_cast %52 : i64 to index
    %58 = llvm.mlir.constant(31 : index) : i64
    %21 = vector.broadcast %cst_1 : f32 to vector<23x8xf32>
    %23 = vector.broadcast %cst_1 : f32 to vector<23x8xf32>
    %24 = vector.extract_strided_slice %23 {offsets = [14], sizes = [6], strides = [1]} : vector<23x8xf32> to vector<6x8xf32>
    %115 = vector.multi_reduction <minf>, %24, %cst_1 [0, 1] : vector<6x8xf32> to f32
    return %115 : f32
  }
}
