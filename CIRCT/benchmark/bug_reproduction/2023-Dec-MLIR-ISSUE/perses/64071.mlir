module {
  func.func @func2(%arg0: tensor<?x?xi1>, %arg1: tensor<5x5xi32>) {
    %c2 = arith.constant 2 : index
    %18 = index.ceildivu %c2, %c2
    %92 = affine.apply affine_map<(d0) -> (d0 - 1)>(%18)
    scf.index_switch %92
    default {
      %alloc_37 = memref.alloc() : memref<10x10xi1>
      // Removed the scf.yield that was returning a value from the default region.
      // scf.yield %alloc_37 : memref<10x10xi1>
    }
    return
  }
}
