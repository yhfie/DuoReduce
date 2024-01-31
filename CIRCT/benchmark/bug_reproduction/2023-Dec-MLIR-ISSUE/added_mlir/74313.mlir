//mlir-opt --canonicalize a.mlir
func.func private @func2() {
  %cst_1 = arith.constant dense<23> : vector<15xindex>
  %cst_2 = arith.constant dense<false> : vector<15xi1>
  %cst_3 = arith.constant 1.000000e+00 : f16
  %cst_12 = arith.constant dense<23> : vector<15xindex>
  %cst_13 = arith.constant dense<false> : vector<15xi1>
  %cst_18 = arith.constant 1.000000e+00 : f16
  %c8 = arith.constant 8 : index
  %c25 = arith.constant 25 : index
  %alloc_15 = memref.alloc(%c25) {alignment = 64 : i64} : memref<?x3xf16>
  %10 = bufferization.to_tensor %alloc_15 : memref<?x3xf16>
  %13 = memref.alloca_scope  -> (memref<27xf32>) {
    %c0_79 = arith.constant 0 : index
    %c89 = arith.constant 89 : index
    %c1_80 = arith.constant 1 : index
    %161 = scf.for %arg1 = %c0_79 to %c89 step %c1_80 iter_args(%arg2 = %10) -> (tensor<?x3xf16>) {
      %alloc_93 = memref.alloc(%c8) {alignment = 64 : i64} : memref<?x3xf16>
      %194 = bufferization.to_tensor %alloc_93 : memref<?x3xf16>
      scf.yield %194 : tensor<?x3xf16>
    }
    %172 = math.ceil %161 : tensor<?x3xf16>
    %alloc_92 = memref.alloc() : memref<27xf32>
    memref.alloca_scope.return %alloc_92 : memref<27xf32>
  }
  %115 = bufferization.clone %13 : memref<27xf32> to memref<27xf32>
  return
}
