//mlir-opt -sparse-compiler=vl=8 temp.mlir
module {
  func.func private @func1(%arg0: tensor<?xf16>) { 
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
    %broadcasted = linalg.broadcast ins(%alloc_9 : memref<?x?x?xi16>) outs(%53 : tensor<?x?x?x24xi16>) dimensions = [3] 
    %62 = scf.index_switch %c2 -> index 
    default {
      %141 = memref.alloca_scope  -> (index) { 
        %alloc_33 = memref.alloc(%c2, %c2, %c2) : memref<?x?x24x?xi16>
        linalg.transpose ins(%broadcasted : tensor<?x?x?x24xi16>) outs(%alloc_33 : memref<?x?x24x?xi16>) permutation = [2, 0, 3, 1]  
        memref.alloca_scope.return %c2 : index
      } 
      scf.yield %c2 : index
    } 
    return
  }
}
