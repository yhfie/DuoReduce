//mlir-opt --affine-data-copy-generate="fast-mem-capacity=1 fast-mem-space=1 min-dma-transfer=0 skip-non-unit-stride-loops slow-mem-space=8 tag-mem-space=1" temp.mlir
module {
  func.func private @func1(%arg0: tensor<9x31xi1>, %arg1: memref<18x9xi16, #spirv.storage_class<StorageBuffer>>, %arg2: memref<18x9xf16, #spirv.storage_class<StorageBuffer>>) {
    %cst = arith.constant dense<5.875200e+04> : vector<1xf16>
    %c0 = arith.constant 0 : index
    %c6 = arith.constant 6 : index
    %6 = tensor.empty(%c6) : tensor<?x9xi64>
    %alloc_20 = memref.alloc(%c6, %c6) : memref<?x?x9xi64, #spirv.storage_class<StorageBuffer>>
    %15 = vector.matrix_multiply %cst, %cst {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
    %19 = vector.flat_transpose %15 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
    %extracted = tensor.extract %6[%c0, %c0] : tensor<?x9xi64>
    %23 = vector.matrix_multiply %15, %19 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
    affine.store %extracted, %alloc_20[%c0, %c0, %c0] : memref<?x?x9xi64, #spirv.storage_class<StorageBuffer>>
    %alloc_33 = memref.alloc() : memref<9x31xi32, #spirv.storage_class<StorageBuffer>>
    return
  }
}