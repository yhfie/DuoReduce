//mlir-opt --test-written-to temp.mlir
module {
  func.func @func1(%arg0: vector<23x23xi1>, %arg1: f32, %arg2: f32) -> memref<23x23xf16> {
    %c9777_i16 = arith.constant 9777 : i16
    %c-3527_i16 = arith.constant -3527 : i16
    %c2 = arith.constant 2 : index
    %18 = index.ceildivu %c2, %c2
    %28 = index.ceildivu %c2, %c2
    %43 = index.sizeof
    %46 = index.divs %c2, %c2
    %92 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 - 16)>(%46, %28, %c2, %43)
    %cst = arith.constant 2.05639219E+9 : f32
    %true = arith.constant true
    %c0 = arith.constant 0 : index
    %c5 = arith.constant 5 : index
    %c1 = arith.constant 1 : index
    %c6 = arith.constant 6 : index
    %alloc_9 = memref.alloc(%c0, %c2, %c2) : memref<?x?x?xi16>
    %53 = tensor.empty(%c2, %c2, %c2) : tensor<?x?x?x24xi16>
    %c3 = arith.constant 3 : index
    %c12 = arith.constant 12 : index
    %c14 = arith.constant 14 : index
    %c17 = arith.constant 17 : index
    %c28 = arith.constant 28 : index
    %6 = tensor.empty() : tensor<14xi64>
    %30 = index.maxs %c12, %c28
    %55 = scf.parallel (%arg3, %arg4) = (%c14, %c3) to (%30, %c2) step (%c28, %c17) init (%6) -> tensor<14xi64> {
      %131 = tensor.empty() : tensor<14xi64>
      scf.reduce(%131) : tensor<14xi64> {
      ^bb0(%arg5: tensor<14xi64>, %arg6: tensor<14xi64>):
        %139 = tensor.empty() : tensor<14xi64>
        scf.reduce.return %139 : tensor<14xi64>
      }
      scf.yield
    }
    %alloc_35 = memref.alloc() : memref<23x23xf16>
    return %alloc_35 : memref<23x23xf16>
  }
}
