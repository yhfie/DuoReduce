//mlir-opt -pass-pipeline='builtin.module(func.func(test-match-reduction))' temp.mlir
module {
  func.func @func2(%arg0: tensor<?x?x?xi1>, %arg1: tensor<5x5xi32>) {
    %c9777_i16 = arith.constant 9777 : i16
    %c-3527_i16 = arith.constant -3527 : i16
    %c11 = arith.constant 11 : index
    %c12 = arith.constant 12 : index
    %c91 = arith.constant 91 : index
    %c911 = arith.constant 911 : index
    %c912 = arith.constant 912 : index
    %com91 = index.divs %c911, %c91
    %com92 = index.divs %c912, %c91
    %c92 = index.divs %com91, %com92
    %c1 = index.divs %c92, %c92
    %com1 = index.divs %c11, %c1
    %com2 = index.divs %c12, %c1
    %c2 = index.divs %com1, %com2
    %18 = index.ceildivu %c2, %c2
    %28 = index.ceildivu %c2, %c2
    %43 = index.sizeof
    %46 = index.divs %c2, %c2
    %92 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 - 16)>(%46, %28, %c2, %43)
    scf.index_switch %92 
    default {
      %136 = scf.index_switch %c2 -> memref<23x8xi1> 
      default {
        %147 = tensor.empty() : tensor<7xi16>
        %148 = tensor.empty() : tensor<i16>
        %149 = linalg.dot ins(%147, %147 : tensor<7xi16>, tensor<7xi16>) outs(%148 : tensor<i16>) -> tensor<i16>
        %alloc_37 = memref.alloc() : memref<23x8xi1>
        scf.yield %alloc_37 : memref<23x8xi1>
      }
    } 
    return
  }
}
